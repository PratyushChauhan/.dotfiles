#!/bin/bash
# if not sudo, exit
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Use sudo."
    exit 1
fi

echo "Updating Cursor to the latest version..."

cp cursor.AppImage /usr/bin/cursor-0.45.10-build-250205buadkzpea-x86_64.AppImage

echo "Cursor updated"
