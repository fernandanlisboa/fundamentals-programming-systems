#!/bin/sh
filename=covid.csv
dir=/municipios
if [ ! -d "$dir" ]; then
  mkdir "$dir"
fi
awk -F ";" '{
  if($2 == "BA" && $3 != ""){
    file="$dir/$3.csv"
    print $0 > $file
    }
}' $filename