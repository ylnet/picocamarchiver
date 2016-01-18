#!/bin/sh

. ./../cfg/picocamarchiver.conf

echo -n "Syncing sorted files to store backup..."
sh backup-rsync.sh $TARGET_DS $BACKUP_DS
RC=$?
if [ $RC -ne 0 ] ; then echo "[KO]" ; else echo "[OK]" ; fi ;
exit $RC

