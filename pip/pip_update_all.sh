#!/bin/bash

WORKING_DIR="$(dirname "$0")"
source ${WORKING_DIR}/pip_backup.sh

#pip list --outdated | awk '{print $1}' | grep -v "^\-e" | cut -d = -f 1 | xargs pip install --upgrade

# Display outdated list without pip version check
# Display only the lines after the first three
# Dispaly only the first column
# Pass the value of the first volumn to pip to upgrade
pip list --outdated --disable-pip-version-check | tail -n +3 | awk '{print $1}' | xargs pip install --upgrade
