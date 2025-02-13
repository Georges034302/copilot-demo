#!/bin/bash

# Run frequency.py and capture its output
output=$(python3 /workspaces/copilot-demo/.github/apps/frequency.py /workspaces/copilot-demo/data.txt)

# Get the current timestamp
timestamp=$(date)

# Append the output and timestamp to README.md
echo -e "\n* Data.txt Frequency Analysis ($timestamp)\n$output" >> /workspaces/copilot-demo/README.md

# Commit the changes - specify the github actor and email
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git add /workspaces/copilot-demo/README.md
git commit -m "Update README.md"
git push origin main