#!/bin/bash
# http://fullcirclemagazine.org/
# Python
# > ./fullcircle_py.sh 1 2 3 4
# > ./fullcircle_py.sh 8

NUM=${*:-1}
SITE="http://dl.fullcirclemagazine.org"
FILE_TEMP="issuePY%02d_en.pdf"
Documents=~/Documents
echo $NUM

for p in $NUM;
do
    FILE=`printf "fc_py%02d.pdf" $p`
    FILE_NAME=`printf $FILE_TEMP $p`
    if [ ! -f "$Documents/$FILE" ]; then
        ISSUE="$SITE/$FILE_NAME"
        wget -c -O "$Documents/$FILE" $ISSUE
        echo "Download $FILE successy!"
    fi
done;

