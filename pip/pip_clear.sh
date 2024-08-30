#!/bin/bash

declare DATE_TIME=$(date +"%Y-%m-%d_%H-%M-%S")
declare BACKUP_FILE="pip_backup_${DATE_TIME}.txt"

echo "Creating backup list"
pip freeze > ${BACKUP_FILE}
echo "  Backup: ${BACKUP_FILE}"
echo "  To restore, run: pip install -r ${BACKUP_FILE}"
echo

echo "Clearing pip installs"
pip freeze | grep -v "^-e" | xargs pip uninstall -y
echo "Done"
echo

pip list
exit 0
