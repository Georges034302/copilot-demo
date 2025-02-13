#!/bin/bash

# Execute frequency.py with data.txt as an argument and capture its output
output=$(python3 /workspaces/copilot-demo/.github/apps/frequency.py /workspaces/copilot-demo/data.txt)
timestamp=$(date)
output="Data.txt Frequency Analysis: $timestamp<br>${output//$'\n'/<br>}"

# Append the output after the closing ul-tag in index.html using a here document
sed -i '/<\/ul>/r /dev/stdin' /workspaces/copilot-demo/index.html << EOM
<pre>$output</pre>
EOM

# # Commit the changes and specify the github actor and email
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git add /workspaces/copilot-demo/index.html
git commit -m "Update index.html"
git push origin main
