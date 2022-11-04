#!/bin/bash
ARQUIVO=$1
awk -F ";" '{if($2 == "BA" && $3 == "Salvador" && $8 >= "2022-05-01" && $8 <= "2022-05-31"){soma=0; for(i=11; i<17; i++){soma+=$i}; print soma}}' $ARQUIVO > resultado.txt