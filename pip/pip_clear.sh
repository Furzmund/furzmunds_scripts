#!/bin/bash

WORKING_DIR="$(dirname "$0")"
source ${WORKING_DIR}/pip_backup.sh

echo "Clearing pip installs"
pip freeze | grep -v "^-e" | xargs pip uninstall -y
echo "Done"
echo

pip list
exit 0
