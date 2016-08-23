#!/bin/bash
if [ `ls -ld "$1" | cut -c1` == "d" ] ; then
size=`du -sh "$1" | cut -f 1`
else
size=`ls -sh "$1" | cut -d " " -f 1`
fi
zenity --info --title "Actual size" --text "The actual size is: $size"
