#!/bin/sh
filename=$1
n=1 # counter
echo "Reading $filename..."
while read -u 3 line;
do
# reading each line
echo "$line"
if [ $(($n % 10)) = 0 ]; then
# user interaction
read -p "Do you want proceed? [y/n]"$'\n' answer
    if [ ! $answer == 'y' ]; then
        break
    fi
fi
n=$((n+1))
done 3< $filename
exit 0