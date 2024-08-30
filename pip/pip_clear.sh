#!/bin/bash

echo "Clearing pip installs"
pip freeze | grep -v "^-e" | xargs pip uninstall -y
echo "Done"
pip list
exit 0