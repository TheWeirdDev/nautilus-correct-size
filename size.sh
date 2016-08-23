#!/bin/bash
size=`du -csh "$@" | tail -1 | cut -f1`
zenity --info --title "Actual size" --text "The actual size is: $size "