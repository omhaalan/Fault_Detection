#!/bin/bash

ARDUPLANE="../ardupilot-integration/ardupilot/ArduPlane/"
cat <<- EOINS
Please Copy the following commands into the prompt as soon as "MAP>" is displayed

param load ../Tools/autotest/aircraft/X8/X8.parm
wp load ../Tools/autotest/ArduPlane-Missions/CMAC-turns.txt
arm throttle
mode auto

# --mavproxy-args "--out=udp:<ip_target>:14550"

EOINS

cd $ARDUPLANE
sim_vehicle.py -N --map --console --model gazebo -A "wp load ../Tools/autotest/ArduPlane-Missions/CMAC-turns.txt"

