#!/bin/sh

if [ -d "$1" ]
then
    echo "    $1 source directory existing."
else
    echo "    $1 source directory does not exists"
    exit 1
fi

if [ -d "$2" ]
then
    echo "    $2 target directory existing."
else
    echo "    $2 target directory does not exists"
    exit 1
fi

COMMAND="exiftool -config ./../cfg/exif.conf -m -o . -r '-FileName<${CreateDate}_${mymodel}.%e' -d $2/%Y/%m/%%e/%Y%m%d%H%M_%%f $1"
echo "    Executing command: $COMMAND" 
exiftool -config ./../cfg/exif.conf -m -o . -r '-FileName<${CreateDate}_${mymodel}.%e' -d "$2"/%Y/%m/%%e/%Y%m%d%H%M_%%f "$1" 
RC=$?
echo "    $COMMAND returned $?"
exit $RC 
