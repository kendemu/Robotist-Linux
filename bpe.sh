#!/bin/bash

## Checking if Arduino IDE is installed.
if [ ! `which arduino` ]; then
echo 'Arduino IDE was not found. Please install it.'
zenity --warning --text="Please install Arduino IDE first.\n\n  sudo apt-get update\n  sudo apt-get install arduino" 2> /dev/null
exit 1
fi

### Change directory which has this shell script.
cd `dirname $0`
cd ./studuinoBPE
### Run Board manager by background process.
java -jar ./BoardManager.jar &
### Run Block programming environment.
if [ -e /usr/bin/squeak.old ]; then
squeak.old ./StuduinoBPE.image
else
squeak ./StuduinoBPE.image
fi

### kill Board manager process
kill $!
