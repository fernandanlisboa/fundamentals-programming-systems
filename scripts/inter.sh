#!/bin/sh
echo "Do you want proceed? [y/n]"
read -p "Do you want proceed? [y/n]"$'\n' answer

echo $answer
if [ ! $answer == 'y' ]; then
        echo "not yes"
fi