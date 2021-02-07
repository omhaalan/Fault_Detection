#!/usr/bin/env python3

#####################################################################################
# Script for parsing Ansys-Outfiles and dumping them to SQLite Databases            #
#####################################################################################
# This tool is required because ANSYS and FENSAP is not able to produce easily      #
# machine-readable files. This script parses the structured log files for the       #
# available data and extracts as many parameters as possible.                       #
# Unfortuntately, some things can't be queried from the log files, such as the      #
# parameters of the forced oscillation function (amplitude, frequency, phase angle. #
#                                                                                   #
# These parameters are queried and have to be entered manually.                     #
#                                                                                   #
#                                                                                   #
# Written by Adrian Winter (adrian_winter@web.de) in Feb and March 2019             #
# Amended by Adrian Winter in May 2019 for the lateral data.                        #
#####################################################################################

from pyparsing import *
import sqlite3
import argparse
from pathlib import Path
import os, sys
import re
import math
import json

##########################################
# Instructions to a add a new parameter: #
##########################################
# If you want to add a new parameter, the required steps differ, depending on whether
# or not you can get the information from the logs or you have to enter them manually
#
# Case A: Information entered manually
# 1) Enter a default value in the __init__ mehtods of the correct class (optional but helpful
#    for the IDE)
# 2) Edit the SQLite Create and Insert statements. When editing the insert statement, ensure
#    that the order used in the create statement is preserved!
# 3) Add a query, probably at the end of the script together with the other querys. Please
#    provide a unit and -- if reasonable -- a default value.
#
# Case B: Information parsed from logfiles
# 1) Execute steps 1 and 2 from Case A.
# 2) Add a distinguishing phrase to the "keywords" list in the prefilter function.
#    This very much works like grep, only lines that contain one of the keywords are
#    parsed later. All other lines are ignored.
# 3) in the if-elif-cascade in the same function add a elif block for the word you're looking
#    for. Be adviced that only the last word in front of the '='-sign is part of the
#    key-variable. Should this be ambiguous, the logic unfortunately has to be modified.
#    (for example if the log file contains "flow: physical time step = 0.0001", enter
#    "flow: physical time step" to the keywords section, but the key variable only contains
#    "step". If there is another variable that ends in "step", the current logic can't be used anymore.

WINGSPAN = 2.1    # For scaling the lateral coefficients. Not found in the log files. So far we have no lateral simulation
                  # except for X8, so we can set this hard-coded.

json_template = """
{
    "roll_amp"    : 0,
    "pitch_amp"   : 0,
    "yaw_amp"     : 0,
    "vx_amp"      : 0,
    "vy_amp"      : 0,
    "vz_amp"      : 0,
    "freq"        : 0,
    "phase_lag"   : 0,
    "cg_x"        : 425,
    "cg_y"        : 30,
    "cg_z"        : 0
}
"""

#region storage classes
class Meta:
    # Class stores "static" information about the simulation run that do not change for each time step.
    def calc_angles(self):
        self.alpha_ref = math.atan2(self.y_vel, self.x_vel)
        self.beta_ref = math.atan2(self.z_vel, self.x_vel)

    def __init__(self):
        self.DBVERSION          = 3
        self.reference_area     = 1
        self.alpha_ref          = 0
        self.beta_ref           = 0
        self.roll_amp           = None
        self.pitch_amp          = None
        self.yaw_amp            = None
        self.vx_amp             = None  # if plunging oscillations are used
        self.vy_amp             = None  # if plunging oscillations are used
        self.vz_amp             = None  # if plunging oscillations are used
        self.freq               = None
        self.phase_lag          = None
        self.cg_x               = None
        self.cg_y               = None
        self.cg_z               = None

        self.x_vel              = 0     # Velocity of the far field stream
        self.y_vel              = 0     # Velocity of the far field stream
        self.z_vel              = 0     # Velocity of the far field stream
        self.vel                = 0
        self.time_step          = 0
        self.rho                = 0
        self.reference_length   = 0  # refernce length, necessary for moment calculations. Is equal to MAC.

    @staticmethod
    def get_sqlite_create():
        return 'CREATE TABLE meta (' \
                   'DBVERSION          REAL, ' \
                   'reference_area     REAL, ' \
                   'air_velocity       REAL, ' \
                   'neutral_alpha      REAL, ' \
                   'neutral_beta       REAL, ' \
                   'amplitude_roll     REAL, ' \
                   'amplitude_pitch    REAL, ' \
                   'amplitude_yaw      REAL, ' \
                   'amplitude_vx       REAL, ' \
                   'amplitude_vy       REAL, ' \
                   'amplitude_vz       REAL, ' \
                   'frequency          REAL, ' \
                   'phase_lag          REAL, ' \
                   'center_of_grav_x   REAL, ' \
                   'center_of_grav_y   REAL, ' \
                   'center_of_grav_z   REAL, ' \
                   'time_step          REAL, ' \
                   'reference_length   REAL' \
                   ')'

    def get_sqlite_insert(self):
        to_insert = (self.DBVERSION,
                     self.reference_area,
                     self.vel,
                     self.alpha_ref,
                     self.beta_ref,
                     self.roll_amp,
                     self.pitch_amp,
                     self.yaw_amp,
                     self.vx_amp,
                     self.vy_amp,
                     self.vz_amp,
                     self.freq,
                     self.phase_lag,
                     self.cg_x,
                     self.cg_y,
                     self.cg_z,
                     self.time_step,
                     self.reference_length
                     )

        return 'INSERT INTO meta VALUES(' + ', '.join(str(value) for value in to_insert) + ')'


class Data:
    # Class stores information about each time step of the simulation run.
    def __init__(self, time_step):
        self.cfx = 0
        self.cfy = 0
        self.cfz = 0
        self.cmx = 0
        self.cmy = 0
        self.cmz = 0
        self.step = time_step
        self.Fx = 0     # Forces in ANSYS reference frame
        self.Fy = 0     # Forces in ANSYS reference frame
        self.Fz = 0     # Forces in ANSYS reference frame
        self.M1 = 0     # Moments in ANSYS reference frame
        self.M2 = 0     # Moments in ANSYS reference frame
        self.M3 = 0     # Moments in ANSYS reference frame

    def calculate_force_coefficients(self, meta):
        # F = rho/2 * v^2 * S * C where S is the reference area and part of the meta data!
        # => c_x = 2F / ( rho * v^2 * S)
        self.cfx = 2 * self.Fx / (meta.rho * meta.vel**2 * meta.reference_area)
        self.cfy = 2 * self.Fy / (meta.rho * meta.vel**2 * meta.reference_area)
        self.cfz = 2 * self.Fz / (meta.rho * meta.vel**2 * meta.reference_area)

    def calculate_moment_coefficients(self, meta):
        # F = rho/2 * v^2 * S * C where S is the reference area and part of the meta data!
        # => c_x = 2F / ( rho * v^2 * S)
        self.cmx = 2 * self.M1 / (meta.rho * meta.vel**2 * meta.reference_area * WINGSPAN)   # roll
        self.cmy = 2 * self.M2 / (meta.rho * meta.vel**2 * meta.reference_area * WINGSPAN)   # yaw
        self.cmz = 2 * self.M3 / (meta.rho * meta.vel**2 * meta.reference_area * meta.reference_length)   # pitch

    @staticmethod
    def get_sqlite_create():
        return "CREATE TABLE data (" \
               "time_step          REAL, " \
               "lift_coefficient   REAL, " \
               "drag_coefficient   REAL, " \
               "side_coefficent    REAL, " \
               "moment_roll        REAL, " \
               "moment_pitch       REAL, " \
               "moment_yaw         REAL" \
               ")"

    def get_sqlite_insert(self):
        to_insert = [
            self.step,
            self.cfy,  # lift
            self.cfx,  # drag
            self.cfz,  # side force
            self.cmx,
            self.cmz,
            self.cmy
        ]
        return 'INSERT INTO data VALUES(' + ', '.join(str(value) for value in to_insert) + ')'

def print_relevant_data_pretty(data, meta):
    print("\n".join(" {:>15}: {}".format(item[0], item[1]) for item in vars(meta).items()))
    print("\n".join(" {:>15}: {}".format(item[0], item[1]) for item in vars(data).items()))

def get_csv_header(data, meta):
    print(",".join("{}".format(item[0]) for item in vars(meta).items()), end=',', file=sys.stderr)
    print(",".join("{}".format(item[0]) for item in vars(data).items()), file=sys.stderr)

def print_relevant_data_csv(data, meta):
    print(",".join("{}".format(item[1], end='') for item in vars(meta).items()), end=',', file=sys.stderr)
    print(",".join("{}".format(item[1]) for item in vars(data).items()), file=sys.stderr)
#endregion

#region Helpers (colors, input methods)
class colors:
    # Use this here instead of the termcolor packet to avoid having to install that
    # just for some non-essential colored output. Only works on Linux I suppose but shouldn't
    # break anything on Windows either.
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


def yes_or_no(question):
    # TODO: This also accepts "yippiyeahha" as "yes!"
    while "the answer is invalid":
        reply = str(input(question + ' (y/n): ')).lower().strip()
        if reply[:1] == 'y':
            return True
        if reply[:1] == 'n':
            return False


def get_float(question, default=None):
    while True:
        reply = input(question)
        if reply == "" and default is not None:
            return default

        try:
            f = float(reply)
            return f
        except ValueError:
            print('Could not parse reply. Please enter a float value! (\'.\' as decimal separator')
#endregion

#region Parsing methods
def prefilter(file):
    # We want to only parse a few keywords with pyparsing. We filter the document here for these keywords:
    # Unfortuntately, since we have multi line matches, we need to use Regex which makes life a bit less convenient.
    # If you want to ignore a few lines, do the following:
    #   1) define the match group in parentheses                                        (match)
    #   2) define a non-capturing group that captures the X lines you want to ignore    (?:.*\n){X}
    #   3) define a capturing group that contains the lines you want:                   (.*)
    #   => eg.  (effective force components)(?:.*\n){6}(.*\n)
    # NOTE: If you have a multiline match that does not contain a = , please see the workaround below in this method!
    #
    # WHEN ENTERING A NEW KEY DO NOT FORGET THE COMMA1111!!!!11!1
    keywords = [
        "(reference area.*)",
        "(reference velocity.*)",
        "(.*-velocity.*)",
        "(c_.*)",
        "(flow: physical time step.*)",
        "(effective force components.*)(?:.*\n){6}(.*)",
        "(effective moment components.*)(?:.*\n){6}(.*)",
        "(density.*)",
        "(moments and their center.*)(?:.*\n){7}(.*\n)(.*\n)(.*\n)",
        "(characteristic length.*)",
        "(\|\s+time step\s+=\s+\d+\s+\|.*)"
    ]
    # Get rid of all line that don't start with a |:
    only_pipes = re.findall("\ +\|.*|\s+\+-*.*", file.read())
    only_pipes = '\n'.join(only_pipes)

    # Subdevide the string in smaller parts:
    split = re.split("\s+\+-*.*", only_pipes)

    matches = []
    for block in split:
        match = re.findall("|".join(keywords), block, re.MULTILINE)
        if match:     # an empty list is false / an nonempty list is true.
            s_match = [str(''.join(x)) for x in match]
            matches.extend(s_match)

    # Clean up the found matches. First, change the tupels to one line per match.
    #matches = [str(''.join(x)) for x in matches]
    out = []
    for s in matches:
        #s = "\n".join(s)  # The "String" is a one-element list so far.
        s = re.sub("\|", '', s)  # and then clean the pipes
        s = re.sub(" +", ' ', s).strip()  # remove multiple and leading/trailing whitespaces

        # special case for multiline matches: do not contain a = ... we need that though.
        # So we have this workaround:
        s = re.sub("components ", "components = ", s)

        # key can have multiple words but that causes issues ith the parsing method later. Replace all spaces before the =
        # with '_'
        splitted = s.split("=")
        newKey = splitted[0].strip().replace(" ", "_")
        out.append(newKey + "=" + splitted[1])
    return out


def parse_filtered(filtered, meta):
    # the center of gravity can also be extracted from the file!. However, this does not help because we don't get the
    # overall length and the position is for some reason specified from the trailing edge.
    data = []
    key = Word(alphanums + ':_-')
    equals = Suppress('=')
    value = Word(alphanums + '.+-')
    variable = OneOrMore(key) + equals + OneOrMore(value)

    data.append(Data(0))    # Initialize field for the first value.
                            # We need to do this becasue  the very first iteration has no "time step = 0" before this.

    for line in filtered:
        for match in variable.searchString(line):
            key = match[0]
            value = float(match[1])

            if key == 'reference_velocity':
                meta.vel = value
                print(colors.OKGREEN + "Found the velocity of " + str(value) +  " m/s" + colors.ENDC)
            elif key == 'x-velocity':    # these values can be used to calculate the **static**
                meta.x_vel = value       # or **neutral** alpha_ref and beta_ref values. These values
                print(colors.OKGREEN + "Found the x-velocity of " + str(value) +  " m/s" + colors.ENDC)
            elif key == 'y-velocity':    # do not change in the log files with time which makes
                meta.y_vel = value       # them useless for getting time-dependent values
                print(colors.OKGREEN + "Found the y-velocity of " + str(value) +  " m/s" + colors.ENDC)
            elif key == 'z-velocity':
                meta.z_vel = value
                print(colors.OKGREEN + "Found the z-velocity of " + str(value) +  " m/s" + colors.ENDC)
                # We now have all three velocities:
                meta.calc_angles()
            elif key == 'reference_area':
                meta.reference_area = value
                print(colors.OKGREEN + "Found the reference area of " + str(value) +  " m^2" + colors.ENDC)

            elif key == 'flow:_physical_time_step':
                meta.time_step = value
            elif key == 'density':
                meta.rho = value
                print(colors.OKGREEN + "Found the air density of " + str(value) +  " kg/m^3" + colors.ENDC)
            elif key == 'characteristic_length' :
                meta.reference_length = value
                print(colors.OKGREEN + "Found the reference length of " + str(value) + " m" + colors.ENDC)
          # elif key == 'c_l':
          #     pass
          #     # this is the first of the data sets we expect for a new object.
          #     new_data = Data(time_step)
          #     #new_data.cl = value
          #     data.append(new_data)

          #     time_step = time_step + 1
          # elif key == 'c_d':
          #     #data[-1].cd = value
          #     pass
          # elif key == 'c_mx':
          #     pass
          #     data[-1].cmx = value
          # elif key == 'c_my':
          #     pass
          #     data[-1].cmy = value
          # elif key == 'c_mz':
          #     pass
          #     data[-1].cmz = value
            elif key == "time_step":
                # ONLY in this case we can assume a new value!
                if data[-1].step != value:
                    data.append(Data(value)) # Then create a new object.
            elif key == "effective_force_components":
                data[-1].Fx = float(match[1])
                data[-1].Fy = float(match[2]) # Change in axis reference in the SQLite insert statements
                data[-1].Fz = float(match[3]) # Change in axis reference in the SQLite insert statements
                data[-1].calculate_force_coefficients(meta)
            elif key == "effective_moment_components":
                data[-1].M1 = float(match[1])
                data[-1].M2 = float(match[2])  # Change in axis reference in the SQLite insert statements
                data[-1].M3 = float(match[3])  # Change in axis reference in the SQLite insert statements
                data[-1].calculate_moment_coefficients(meta)
            else:
                pass

    return meta, data

def parse_json(json_file):
    meta = Meta()
    with open(json_file) as jsfile:
        data = json.load(jsfile)
        for (key, value) in data.items():
            print((colors.OKGREEN + "Found in JSON: {:>12} = {}" + colors.ENDC).format(key, str(value)))
            if(key == "roll_amp"):
                meta.roll_amp  = value * math.pi / 180
            elif(key == "pitch_amp"):
                meta.pitch_amp = value * math.pi / 180
            elif(key == "yaw_amp"):
                meta.yaw_amp   = value * math.pi / 180
            elif(key == "vx_amp"):
                meta.vx_amp    = value
            elif(key == "vy_amp"):
                meta.vy_amp    = value
            elif(key == "vz_amp"):
                meta.vz_amp    = value
            elif(key == "freq"):
                meta.freq      = value
            elif(key == "phase_lag"):
                meta.phase_lag = value
            elif(key == "cg_x"):
                meta.cg_x      = value
            elif(key == "cg_y"):
                meta.cg_y      = value
            elif(key == "cg_z"):
                meta.cg_z      = value
            else:
                pass

    return meta

def check_meta(meta):
    if (
           meta.roll_amp is None
        or meta.pitch_amp is None
        or meta.yaw_amp is None
        or meta.vx_amp is None
        or meta.vy_amp is None
        or meta.vz_amp is None
        or meta.freq is None
        or meta.phase_lag is None
        or meta.cg_x is None
        or meta.cg_y is None
        or meta.cg_z is None
    ):
        print("Done parsing the file. Will query a few more values that can't be extracted from the logs!")
        print(
            "Some values have defaults, wirtten in square brackets [...]. Press enter if you want to accept the default.")
        print("")
        print(colors.FAIL + colors.BOLD + "ENTER THE VALUES AS USED IN ANSYS!" + colors.ENDC)
        print(colors.OKBLUE + "Some examples: ")
        print("   * The up-down-motion is a y-amplitude, not z.")
        print("   * The phase lag is 0.25 for a cos function, not pi/4")
        print("   * If this is a X8-Model, the CG pos is probably (425 | 30 | 0)")
        print("   *              profile , the CG pos is probably (125 |  0 | 0)")
        print(colors.ENDC)

        if meta.roll_amp  is None:
            meta.roll_amp       = get_float("Enter the roll amplitude (degrees):                     ") * math.pi / 180
        if meta.pitch_amp is None:
            meta.pitch_amp      = get_float("Enter the pitch amplitude (degrees):                    ") * math.pi / 180
        if meta.yaw_amp   is None:
            meta.yaw_amp        = get_float("Enter the yaw amplitude (degrees):                      ") * math.pi / 180
        if meta.vx_amp    is None:
            # This is nonsense, deactivate!
            meta.vx_amp = 0
        if meta.vy_amp    is None:
            meta.vy_amp         = get_float("Enter the y-velocity amplitude (m/s):                   ")
        if meta.vz_amp    is None:
            meta.vz_amp         = get_float("Enter the z-velocity amplitude (m/s):                   ")
        if meta.freq      is None:
            meta.freq           = get_float("Enter the oscillation frequency (Hz):                   ")
        if meta.phase_lag is None:
            meta.phase_lag      = get_float("Enter the phase lag as was used in Ansys [0]:           ", 0)
        if meta.cg_x      is None:
            meta.cg_x           = get_float("Enter the CG in x-Direction from the front (mm) [425]:  ", 425)
        if meta.cg_y      is None:
            meta.cg_y           = get_float("Enter the CG in up-direction (mm) [30]:                 ", 30)
        if meta.cg_z      is None:
            meta.cg_z           = get_float("Enter the CG in right direction (mm) [0]:               ", 0)

    return meta
#endregion


#region Script
#######
# Here the acutal script starts!
#######

meta = None  # I HATE PYTHON. Don't delete.


parser = argparse.ArgumentParser(
    description='Import a data file from CFD-ALE calculations, add some meta data and add it to a SQLite Database')
parser.add_argument('infile', action='store',
                    help='File or Folder that contains exactly one file that ends in "out"')
parser.add_argument('dbfile', action='store',
                    help='SQLite database file for output. Write "stdout" for no file and console dump!')
parser.add_argument('--json_template', action='store_true', dest='json_template',
                    help='print empty JSON template and exit. Since this script is kind of a hack, you need to specify any string for infile and outfile, for example "a" and "a"')
parser.add_argument('--csvheader', action='store_true', dest='csvheader',
                    help='print CSV header and exit. Since this script is kind of a hack, you need to specify any string for infile and outfile, for example "a" and "a"')
parser.add_argument('--static', action='store_true', dest='static_flag',
                    help='If only static values should be extracted, the data from the JSON is useless. Skip importing/querying this data.')
group = parser.add_mutually_exclusive_group()
group.add_argument('--overwrite-db', action='store_true', dest='overwrite_db')
group.add_argument('--no-overwrite-db', action='store_true', dest='no_overwrite_db')

args = parser.parse_args()

# Print empty JSON template if requested and exit.
if(args.json_template):
    print(json_template)
    sys.exit(0)
if (args.csvheader):
    print(get_csv_header(Data(0), Meta()))
    sys.exit(0)

if args.dbfile == "stdout":
    stdout_flag = True

print(colors.WARNING + "Caution: Hard-coded reference length (wingspan) for X8 in use!" + colors.ENDC)

# Check if the input file exists and the output file doesn't:
p_infile = Path(args.infile)
if not stdout_flag:
    database = Path(args.dbfile)

    # Check whether database exists and if so, if we may overwrite it.
    if database.is_file():
        if args.overwrite_db:
            overwrite_sqlite = True
        elif args.no_overwrite_db:
            print(colors.FAIL + "Old database found and --no-overwrite-db option given. Will exit!" + colors.ENDC)
            sys.exit(3)
        else:
            overwrite_sqlite = yes_or_no('Output database %s already exists! Do you want to overwrite it?' % database)

        if overwrite_sqlite:
            os.remove(database)
        else:
            print(colors.FAIL + "Are not allowed to delete file. Will exit!" + colors.ENDC)
            sys.exit(2)

# Check if the input files exist exactly once.
if p_infile.is_file():
    print(colors.WARNING + "You gave a file directly (not a folder)... That's OK but you won't be able to use the JSON feature." + colors.ENDC)
    outfile = p_infile
elif p_infile.is_dir():
    files_in_dir = os.listdir(p_infile)
    print("found the following files: " + " ".join(files_in_dir))
    # check that only one out file and only one json file is included:
    if list(map(lambda f: f.endswith('.json'), files_in_dir)).count(True) > 1:
        print(colors.FAIL + "Found more than one JSON file in the folder you specified. Don't know what to do." + colors.ENDC)
        sys.exit(100)
    if list(map(lambda f: f.endswith('out'), files_in_dir)).count(True) > 1:
        print(colors.FAIL + "Found more than one OUT file in the folder you specified. Don't know what to do." + colors.ENDC)
        sys.exit(101)

    for f in files_in_dir:
        if f.endswith(".json"):
            print("Found JSON Config file: " + f)
            json_file = p_infile / f                # p_infile is folder, concat folder and path with '/'... What a Syntax.
            meta = parse_json(json_file)
        elif f.endswith("out") :
            print("Found ANSYS outfile: " + f)
            outfile = p_infile / f                  # p_infile is folder, concat folder and path with '/'... What a Syntax.
else:
    print(colors.FAIL + "File or Folder with input data not found! Cannot continue." + colors.ENDC)
    sys.exit(150)

# If we have not found a JSON file we need to create the meta object:
if meta is None:
    meta = Meta()
# If values are missing (e.g. becasue no JSON was found, ask for them now:
if not args.static_flag:
    meta = check_meta(meta)

f_infile = open(outfile, 'r',  encoding='ISO-8859-1')  # No idea if this is the right encoding but at least so far it didn't crash. UTF-8 does not work.

print("Opened file, will start preparing the file")
filtered = prefilter(f_infile)

print("Done prefiltering the file. Will parse the remainder and create SQLite Database")


(meta, data) = parse_filtered(filtered, meta)

if stdout_flag:
    if  args.static_flag:
        # We have many time steps but the last one is the converged one:
        print_relevant_data_csv(data[-1], meta)
    else:
        [print_relevant_data_csv(d, meta) for d in data]
    #[print_relevant_data_pretty(d, meta) for d in data]

else:
    con = sqlite3.connect(str(database))
    cur = con.cursor()

    cur.execute(Meta.get_sqlite_create())
    cur.execute(Data.get_sqlite_create())

    cur.execute(meta.get_sqlite_insert())
    for d in data:
        cur.execute(d.get_sqlite_insert())

    con.commit()
print("Done!")

#endregion
