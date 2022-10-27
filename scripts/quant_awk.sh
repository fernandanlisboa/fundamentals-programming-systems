#!/bin/sh
filename=covid.csv
awk -F ";" 'BEGIN{
    obitos=0
    }
{
    if($3 == "Salvador" && $8 >= "2022-05-01" && $8 <= "2022-05-31" ){obitos += $14}
    }
END{
    print "Total de obitos novos: " obitos
    }' covid.csv