#!/bin/env bash

# Prepare directories

mkdir -p "door_management_files/"
mkdir -p "door_management_files/door_configuration"
mkdir -p "door_management_files/door_map"
mkdir -p "door_management_files/door_logs"

# Create door_map file for cat to return code 0
#
# Note: it counts too 

touch door_management_files/door_map/door_map_1.1

# Create bunch of files for an AI to run

FIRST_LOOP_COUNT=16
SECOND_LOOP_COUNT=16

LOG_NAME_COUNT=1
CONF_NAME_COUNT=1

while [ $FIRST_LOOP_COUNT != 0 ]
do
  touch door_management_files/door_logs/"$LOG_NAME_COUNT".log
  ((FIRST_LOOP_COUNT--))
  ((LOG_NAME_COUNT++))
done

while [ $SECOND_LOOP_COUNT != 0 ]
do
  touch door_management_files/door_configuration/"$CONF_NAME_COUNT".conf
  ((SECOND_LOOP_COUNT--))
  ((CONF_NAME_COUNT++))
done

