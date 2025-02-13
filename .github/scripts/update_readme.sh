#!/bin/bash

# Capture the output from the argument
output=$1

# Append the output after the closing ul-tag in README.md using a here document
sed -i '/<\/ul>/r /dev/stdin' /app/README.md << EOM
<pre>$output</pre>
EOM

# Commit the changes - specify the github actor and email
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
git add /app/README.md
git commit -m "Update README.md"
git push origin main