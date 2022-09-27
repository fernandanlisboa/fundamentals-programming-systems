#!/bin/sh
tmp_dir='logs'
if [ ! -d "$tmp_dir" ]; then
    mkdir $tmp_dir
fi

exec > "$tmp_dir/output.txt" 2>&1
FILE=scripts/create_directory.sh
SCRIPT_NAME=scripts/verify_and_show_type_file.sh

# exec 1> >(logger -s -t $("$SCRIPT_NAME" "$FILE")) 2>&1
RESULT=$($SCRIPT_NAME $FILE | tee >(cat >&2))

if $result; then
    echo "$RESULT"
else
    exit
fi

