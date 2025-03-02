ENCODE FILE TO BASE64
=====================

Encode the selected file to base64 and copy the result to the clipboard or save it to a new file. The new file will have the name of the original file followed by `.base64`.

DEPENDENCIES
------------

- `base64` to encode the file.
- `zenity` to allow the user to choose whether to save the encoded data to the clipboard or to a new file.
- `xclip` to copy the encoded data to the clipboard.
- `gettext` for translations.