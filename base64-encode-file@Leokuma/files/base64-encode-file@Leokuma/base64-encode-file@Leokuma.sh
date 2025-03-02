#!/bin/bash

TARGET=$(/usr/bin/gettext 'Target')
CLIPBOARD=$(/usr/bin/gettext 'Clipboard')
FILE=$(/usr/bin/gettext 'File')
TEXT=$(/usr/bin/gettext 'Send encoded data to')

FILENAME=$1

target=$(/usr/bin/zenity --question --switch \
  --title="$TARGET" \
  --text="$TEXT:" \
  --extra-button="$CLIPBOARD" \
  --extra-button="$FILE" \
)

if [[ $target == $CLIPBOARD ]] then
  /usr/bin/base64 -w 0 "$FILENAME" | xclip -selection clipboard
elif [[ $target == $FILE ]] then
  /usr/bin/base64 -w 0 "$FILENAME" > "$FILENAME.base64"
fi