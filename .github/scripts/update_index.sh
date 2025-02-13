#!/bin/bash

# Capture the output from the argument
output=$1
timestamp=$(date)
output="Data.txt Frequency Analysis: $timestamp<br>${output//$'\n'/<br>}"

# Append the output after the closing ul-tag in index.html using a here document
sed -i '/<\/ul>/r /dev/stdin' /app/index.html << EOM
<pre>$output</pre>
EOM

# Commit the changes and specify the github actor and email
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --global user.name "github-actions[bot]"
git add /app/index.html
git commit -m "Update index.html"
git push origin main
