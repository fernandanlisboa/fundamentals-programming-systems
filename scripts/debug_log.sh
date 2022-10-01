#!/bin/sh
set -e
tmp_dir='logs'
if [ ! -d "$tmp_dir" ]; then
    mkdir $tmp_dir
fi

FILE=scripts/create_directory.sh
SCRIPT_NAME=scripts/verify_and_show_type_file.sh
SAVE_="$tmp_dir/log"


bash -x -e $("$SCRIPT_NAME" "$FILE") 2>"$SAVE_"
logger -f "$SAVE_"

