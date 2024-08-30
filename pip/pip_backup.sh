#!/bin/bash

declare DATE_TIME=$(date +"%Y%m%d-%H%M%S")
declare BACKUP_FILE="pip_backup_${DATE_TIME}.txt"

echo "Creating backup pip list"
pip freeze > ${BACKUP_FILE}
echo "  Backup: ${BACKUP_FILE}"
echo "  To restore, run: pip install -r ${BACKUP_FILE}"
echo
