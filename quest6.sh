#!/bin/env bash

# Change workdir
cd ai_help

# Generate a key
./keygen.sh &
wait

cd key

# Find empty files and delete them
for file in *
do
  if [[ -s $file ]]; then
    true
  else
    rm $file
  fi
done

# Concatenate a key
cat * | tr -d "\n" > main.key
