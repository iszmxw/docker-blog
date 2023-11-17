#!/bin/bash

data_dir="./data"
log_dir="./log"

read -r -p "Are You Sure? [Y/n] " input

case $input in
[yY][eE][sS] | [yY])
    for loop in $data_dir $log_dir; do
        if [ -d $loop ]; then
            rm -rf $loop
        fi
    done
    ;;

[nN][oO] | [nN])
    echo "No"
    exit 1
    ;;

*)
    echo "Invalid input..."
    exit 1
    ;;
esac

echo  "clear complete 100% !"
