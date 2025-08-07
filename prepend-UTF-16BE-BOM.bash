#!/usr/bin/env bash

file='vom-eise-befreit'
printf '\xFE\xFF' > tempfile.utf16be
iconv -f UTF-8 -t UTF-16BE $file.UTF-8 >> tempfile.utf16be
mv -v tempfile.utf16be $file.UTF-16BE-BOM
