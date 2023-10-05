#!/usr/bin/env bash

files_600=$(find $HOME/.ssh -name "*rsa*" -o -name "id*" -o -name "identity" -o -name "*pem*" -o -name "known_hosts" -o -name "authorized_keys" -o -name "config")
for file in $files_600
    do 
        if [ -f $file ]; then
            if [ "$(stat -f %a "$file")" != "600" ] ; then
                chmod 600 "$file"
            fi
        fi
        echo "$file"
    done

files_644=$(find $HOME/.ssh -name "*pub*" -o -name "*.pub")
for file in $files_644
    do 
        if [ -f $file ]; then
            if [ "$(stat -f %a "$file")" != "644" ] ; then
                chmod 644 "$file"
            fi
        fi
        # echo "$file"
    done
