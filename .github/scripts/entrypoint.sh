#!/bin/bash

# Execute frequency.py with data.txt as an argument and capture its output
output=$(python3 /app/.github/apps/frequency.py /app/data.txt)

# Pass the output to update_readme.sh and update_index.sh
/app/.github/scripts/update_readme.sh "$output"
/app/.github/scripts/update_index.sh "$output"

