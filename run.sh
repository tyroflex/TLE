#!/bin/bash

# Get to a predictable directory, the directory of this script
cd "$(dirname "$0")"

while true; do
    FONTCONFIG_FILE=$PWD/extra/fonts.conf python -m tle

    (( $? != 42 )) && break

    echo '==================================================================='
    echo '=                       Restarting                                ='
    echo '==================================================================='
done
