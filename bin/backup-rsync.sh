#!/bin/sh
# Backup command from $1 to $2
# yli - jan 2012

SRC_DIR="$1"
DST_DIR="$2"

if [ -d "$SRC_DIR" ] ; then
	echo "$SRC_DIR directory exist"
else
	echo "Failed : $SRC_DIR does not exist!"
	exit 1
fi

if [ -d "$DST_DIR" ] ; then
	echo "$DST_DIR directory exist"
else
	echo "Failed : $DST_DIR does not exist!"
	exit 1
fi

COMMAND="rsync -crlHpEt --progress \"$SRC_DIR\" \"$DST_DIR\""
echo "Executing backup command : $COMMAND"

eval $COMMAND
RC=$?
if [ $RC -ne 0 ] ; then
	echo "$COMMAND failed with rc $RC"
	exit $RC
else
	echo "$COMMAND successfull."
	exit $RC
fi
