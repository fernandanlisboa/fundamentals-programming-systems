#!/bin/sh

ARG=$1
value=""

if [ -d $ARG ]; then
    value=1


elif [ -x $ARG ]; then
    value=2


elif [ -f $ARG ]; then
    value=0

else
    value=3
fi

echo $value