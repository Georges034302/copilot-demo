#!/bin/bash

# Capture the output from the argument
output=$1

# Append the output to README.md
echo -e "\n<pre>$output</pre>" >> /app/README.md

# Commit the changes - specify the github actor and email
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --global user.name "github-actions[bot]"
git add /app/README.md
git commit -m "Update README.md"
git push origin main