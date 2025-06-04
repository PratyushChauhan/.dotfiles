#!/bin/bash
set -e  # Exit immediately if any command fails

cat << "EndOfMessage"
______ _____ _____ _____ _________________ 
|  _  \_   _/  ___/  __ \  _  | ___ \  _  \
| | | | | | \ `--.| /  \/ | | | |_/ / | | |
| | | | | |  `--. \ |   | | | |    /| | | |
| |/ / _| |_/\__/ / \__/\ \_/ / |\ \| |/ / 
|___/  \___/\____/ \____/\___/\_| \_|___/  
EndOfMessage
echo "*******************Updating Discord..."
echo "*******************untar discord.tar.gz"

tar -xvf discord.tar.gz

echo "*******************rename Discord dir to discord"
mv Discord discord

echo "*******************copying discord.desktop to /usr/share/applications"
cp ./discord/discord.desktop /usr/share/applications/

echo "*******************copying discord.png to /usr/share/icons"
cp ./discord/discord.png /usr/share/icons/

echo "*******************copying discord to /usr/bin"
cp ./discord/Discord /usr/bin/

echo "*******************copying discord to /usr/share"
cp -r ./discord /usr/share/

echo "*******************cleanup"
rm -rf discord

echo "*******************Discord updated successfully!"
