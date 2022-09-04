#!/bin/sh
ARG=$1

return_=$(scripts/verify_file_type.sh "$ARG")
type=""

if [[ "$return_" == 0 ]]; then
    type="Arquivo padrão"


elif [[ "$return_" == 1 ]]; then
    type="Diretório"


elif [[ "$return_" == 2 ]]; then
    type="Executável"
else
    type="Outros"
fi

echo $type