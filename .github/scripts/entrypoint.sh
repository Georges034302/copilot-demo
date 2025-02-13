#!/bin/sh

# Grant execution rights to both scripts
chmod +x /app/.github/scripts/update_readme.sh
chmod +x /app/.github/scripts/update_index.sh

# Execute the scripts
/app/.github/scripts/update_readme.sh
/app/.github/scripts/update_index.sh