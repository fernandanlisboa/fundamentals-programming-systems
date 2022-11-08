#!/bin/sh
filename=covid_.csv
dir=municipios
if [ ! -d "./$dir" ]; then
  mkdir "$dir"
fi
awk -F ";" '{
  if($2 == "BA" && $3 != ""){
    file="./${dir}/${3}.csv"
    print $file
    # print $1 >> $file
    }
}' $filename