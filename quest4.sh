#!/bin/env bash

# Function to find process
find_ai() {
  pgrep -f "ai_door_control.sh" > /dev/null 2>&1
}

# Function to kill process
kill_ai() {
  pkill -f "ai_door_control.sh"
}

# Run
if find_ai; then
  kill_ai
  echo "Killed!"
else
  echo "Not found!"
fi
