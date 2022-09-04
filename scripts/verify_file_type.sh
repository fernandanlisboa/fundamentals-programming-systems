#!/bin/sh

ARG=$1

if [ -d $ARG ]; then
    echo "rc=1"


elif [ -x $ARG ]; then
    echo "rc=2"


elif [ -f $ARG ]; then
    echo "rc=0"

else
    echo "rc=3"
fi