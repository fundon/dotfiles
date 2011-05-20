#!/bin/bash
# http://g.51cto.com/linuxops
# Linux 运维趋势

NUM=${*:-0}
SITE="http://os.51cto.com/os/linuxops/pdf"
FILE_TEMP="51CTO_linuxops_issue%d.pdf"
Documents=~/Documents
echo $NUM

for p in $NUM;
do
    FILE_NAME=`printf $FILE_TEMP $p`
    if [ ! -f "$Documents/$FILE_NAME" ]; then
        ISSUE="$SITE/$FILE_NAME"
        wget -c -O "$Documents/$FILE_NAME" $ISSUE
        echo "Download $FILE_NAME successy!"
    fi
done;
