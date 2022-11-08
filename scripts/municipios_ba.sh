#!/bin/sh
filename=covid_.csv
dir=municipios
if [ ! -d "./$dir" ]; then
  mkdir "$dir"
fi
awk -F ";" -v dir=$dir '{
  if($2 == "BA" && $3 != ""){
    # print "files: " dir;
    file=dir "/" $3 ".csv";
    # print $3 "-" file;
    print $0 >> file;
    }
}' $filename