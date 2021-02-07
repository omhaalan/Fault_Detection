SUMMARY OF TOOLS
================

This folder contains a couple of tools that are useful for analysis, but not required for the
simuator:

ansysparser.py
--------------
Python tool to convert the large text output from FESAP into a SQLite database. This is done for two
reasons: 

1. (almost) all required metadata, for example the oscillation amplitude is in one file, so that
it's not necessary to adjust the settings in MATLAB, reducing the possibility for operator error
2. The file size of the SQLite-Databases is _much_ smaller

Please read the output of ansysparer.py --help and maybe have a look at the source code! Also read the
comments regarding `processmanydbs.sh`

processmanydbs.sh
-----------------
This is a simple Bash script (only tested on Linux!) that calls up to `MAXINSTANCES` of ansysparser.py 
simulaneously. ansysparser.py is single-threaded and only analyzes one database per call, so this can 
be used to analyze several files simultaneously while speeding the entire process up significantly. 
`MAXINSTANCES` should probably be set to however many cores your computer has. 

**This script is not foolproof and not really documented. Please read it and understand it if you 
want to use it!**


calc_sys_long.m
---------------
Calculates the system matrix **A** for the linearized state-space model 

**x**' = **Ax + Bu**

**y** = **Cx + Du** 

in the
longitudinal motion. The eigenvalues determine phygoid and short period oscillations.

calc_sys_lat.m
--------------
Calculates the system matrix **A** for the lateral direction. The eigenvalues determine dutch roll,
spiral and roll damping.

create_pole_plot.m
------------------
Based on the eigenvalue position (frequency, damping) a color-coded map is created with this script
that represents the expected flight quality as a function of AOA/AOS and icing. Requires
`calc_sys_long` and `calc_sys_lat`.

mavlink.lua
-----------
A auto-generated wirshark dissector for the MAVLINK protocol. it's **unknown** if this dissector works,
it's never been used.

gazebo.lua
----------
A minimal hand-written wireshark dissector for the gazebo protocol that is used by ardupilot to send
the servo commands to Simulink. The data consists of up to 10 floats that represent a PWM value.
Usually 1000 means minimal, 2000 maximal deflection, but that can be configured in the Ardupilot
param files.

plots_MSC.m
-----------
This script generates some plots, apparently used for Andreas Wenz' thesis and the ICUAS2017
conference paper. It's unknown if this script is useful, and contains hard-coded paths to Andreas'
computer. It can probably be removed from git or has to be modified.

runArdu.sh
----------
This script is supposed to run all commands required to start the Ardupilot SITL. In the current
form it's not that useful and could be removed, but it could be improved (maybe using 'expect'?) so
that it actually does what it's supposed to.

runfg.sh
--------
This starts FlightGear in a minimal configuration (e.g. physics model disabled, weather disabled, AI
traffic disabled, ...) for visualization of the simulator's state.


