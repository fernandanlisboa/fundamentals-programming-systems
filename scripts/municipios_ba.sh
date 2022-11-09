#!/bin/sh
filename=covid.csv
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

SAVE_=$IFS
IFS=$(echo -en "\n\b")

files="$dir/*"
# 2ª parte
for f in $files
  do
  file=${f##*/}
    awk -F ";" -v cidade=${file%.*} 'BEGIN{
      maior=0; 
      data="";
      }
      {
        if($14 > maior){
          maior=$14;
          data=$8;
        }
      }
      END{
        printf "%s;%s;%d;\n",cidade,data,maior; 
      }' $f >> final.csv
  done