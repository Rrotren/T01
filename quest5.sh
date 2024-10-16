#!/bin/env bash

FILE_CONTENTS=$(cat door_management_files/door_configuration/1.conf)

# Check that file is not empty and change it if needed
if [[ -z "$FILE_CONTENTS" && "$FILE_CONTENTS" != "OPEN" ]]; then
  echo "OPEN" > door_management_files/door_configuration/1.conf
else
  echo "Already changed!"
fi
