#!/bin/bash

FILENAME=$(/usr/bin/gettext 'Filename')
FILE_EXISTS=$(/usr/bin/gettext 'File already exists')
NEW_FILE_FROM_CLIPBOARD=$(/usr/bin/gettext 'New file from clipboard')

DIR=$1

filename=$(/usr/bin/zenity --entry --text="$FILENAME" --title="$NEW_FILE_FROM_CLIPBOARD" --width=300)

[[ -z $filename ]] && exit

fullpath=$DIR/$filename

if [[ -e $fullpath ]]; then
  /usr/bin/zenity --error --text="$FILE_EXISTS". --width=200
  exit
fi

/usr/bin/xclip -o -selection clipboard > "$fullpath"