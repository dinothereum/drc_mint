#!/bin/bash

while true; do
  # Run your desired command here
  node . drc-20 mint xxx bank 1000 5

  echo "Sleep for 3 minutes before repeating the command ...."
  current_time=$(date +"%T")
  echo "Current time: $current_time"
  sleep 240
done
