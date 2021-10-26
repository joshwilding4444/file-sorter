#!/bin/bash

IFS='.'

declare -a file_types

files_current_dir=$(pwd)/*

for file_name in $files_current_dir;
do
    read -a strarr <<< $file_name
    read -a file_types <<< ${strarr[1]}
    if [ ! -e ${strarr[1]} ]; then
        mkdir ${strarr[1]}        
    fi
    if [[ -e $file_name ]]; then
        mv *.${file_types[@]} ${file_types[@]}/
    fi
done
