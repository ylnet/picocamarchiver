#!/bin/sh

. ./../cfg/picocamarchiver.conf


echo "Sorting input files...[IN PROGRESS]"
sh sort-exiftool.sh $SOURCE_DS $TARGET_DS 
RC=$?
echo -n "Sorting input files..."
if [ $RC -ne 0 ] ; then echo "[KO]" ; else echo "[OK]" ; fi ;
exit $RC
