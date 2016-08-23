#!/bin/bash
for i in "$@"; do
    [ -e "$i" ] || continue
    files=$files '$i'
done
size=`du -csh $files | tail -1 | cut -f 1`
zenity --info --title "Actual size" --text "The actual size is: $size "