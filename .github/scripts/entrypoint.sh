#!/bin/bash

# Execute frequency.py with data.txt as an argument and capture its output
output=$(python3 /app/.github/apps/frequency.py /app/data.txt)

# Debugging information
echo "Frequency analysis output: $output"

# Pass the output to update_readme.sh and update_index.sh
/app/.github/scripts/update_readme.sh "$output"
/app/.github/scripts/update_index.sh "$output"

# Debugging information
echo "update_readme.sh executed with output: $output"
echo "update_index.sh executed with output: $output"