#!/bin/sh
ARG=$1
DATETIME=$(date "+%Y.%m.%d-%H.%M.%S")
FILES=$"./*"
case $ARG in
  "BACKUP")
    if [ ! -d "BACKUP" ]; then
        mkdir "BACKUP"
    fi    
    for f in $FILES
    do
        if [ -f $f ]; then
            new=$f.$DATETIME
            cp $"$f" $"./BACKUP/$new"
            echo "copy $new"
        fi      
    done
  ;;
  "TEMPORARIO1")
    if [ ! -d "TMP" ]; then
        mkdir "TMP"
    fi
    cp [aeiou]* "./TMP"
    echo "copy files"
  ;;
  "TEMPORARIO2")
    if [ ! -d "TMP" ]; then
        mkdir "TMP"
    fi
    cp [!aeiou]* "./TMP"
    echo "copy files"
  ;;
  *)
    backup_dir=./BACKUP
    tmp_dir=TMP
    if [ -d "$backup_dir" ] || [ -d "$tmp_dir" ] ; then
        if [ -d "$backup_dir" ]; then
            rm -rf $backup_dir
            echo "remove $backup_dir"
        fi
        if [ -d "$tmp_dir" ]; then
            rm -rf $tmp_dir
            echo "remove $tmp_dir"
        fi      
    else
     echo "nothing to remove"
    fi
;;
esac