#!/bin/bash

DIRECTORY=$(zenity --entry --text="Enter directory to download it" --title="Download Where?")
kitty --working-directory "$DIRECTORY" -e aria2c --seed-time=0 -s16 -x16 $QUTE_URL
