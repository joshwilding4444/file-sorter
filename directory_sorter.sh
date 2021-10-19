#!/bin/bash

IFS='.'

declare -a file_types

for line in $(ls -l);
do
    if [[ $line != *"total "* ]]; then
        read -a strarr <<< $line
        read -a file_types <<< ${strarr[0]}
        if [ ! -e ${strarr[0]} ]; then
            mkdir ${strarr[0]}
        fi
    fi
done

