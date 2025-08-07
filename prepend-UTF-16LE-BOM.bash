#!/usr/bin/env bash

file='vom-eise-befreit'
printf '\xFF\xFE' > tempfile.utf16le
iconv -f UTF-8 -t UTF-16LE $file.UTF-8 >> tempfile.utf16le
mv -v tempfile.utf16le $file.UTF-16LE-BOM
