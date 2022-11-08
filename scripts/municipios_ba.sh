#!/bin/sh
filename=covid_.csv
dir=./municipios
echo $dir
if [ ! -d "$dir" ]; then
  echo "$dir"
  mkdir "$dir"
fi
awk -F ";" '{
  if($2 == "BA" && $3 != ""){
    file="$dir/$3.csv"
    print $0 > $files
    }
}' $filename