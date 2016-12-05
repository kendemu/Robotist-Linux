#!/bin/bash
sudo apt-get install squeak-vm squeak-image3.9 arduino
export VER="2.0"
export NAME="Studuino"

#Make .desktop files and setup entities
echo "[Desktop Entry]" > Studuino.desktop
echo "Version=$VER" >> Studuino.desktop
echo "Name=$NAME $VER" >> Studuino.desktop
echo "GenericName=$NAME $VER" >> Studuino.desktop
echo "Comment=起動 $NAME $VER" >> Studuino.desktop
echo "Icon=$(pwd)/studuinoBPE/robotist.png" >> Studuino.desktop
echo "Exec=$(pwd)/bpe.sh" >> Studuino.desktop
echo "Terminal=false" >> Studuino.desktop
echo "Type=Application" >> Studuino.desktop
echo "Categories=Development;Education;Science;" >> Studuino.desktop

#Give execution permission to desktop apps.
chmod +x Studuino.desktop

mv Studuino.desktop /home/$(whoami)/Desktop
