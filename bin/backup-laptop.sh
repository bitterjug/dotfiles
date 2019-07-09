#!/bin/bash

FROM=/home/$USER
DEST_MOUNT=/media/$USER/backup-[0-9]

echo -e "\nBackup $USER's home directory to USB backup disk\n"
echo -e "Testing for mounted backup devices...\n"

# count mounted media matchin DEST_MOUNT pattern
mounted=`mount | grep $DEST_MOUNT  | wc -l`

# We're expecting exactly one

case "$mounted" in
    0)  echo "No mounted device found at $DEST_MOUNT"
        echo "Make sure the USB drive is connected."
        exit 1
        ;;
    1)  TO=`ls -d  $DEST_MOUNT`
        echo "Found backup drive: $TO"
        ;;
    *)  echo "Found $mounted drives; run again  with only one connected."
        exit 1
        ;;
esac

echo -e "Backup from $FROM to $TO \n"

# Don't back up:
# - things that give errors (eg sockets)
# - virtualenvs - lots of small files that rsync would take a while to go
#   through
# - any file systems mounted (eg NFS, external hard drives)
# - places backed up to other services
# - places that might have transitory content (tmp/)
rsync --archive --partial --progress --verbose \
    --delete --one-file-system \
    --exclude Music/ \
    --exclude tmp/ \
    --exclude .wine/ \
    --exclude .cache/ \
    --exclude .stack/ \
    --exclude .dropbox/command_socket \
    --exclude .dropbox/iface_socket \
    --exclude .ssh/control/ \
    --exclude .vagrant.d/boxes/ \
    --exclude .virtualenvs \
    --exclude .VirtualBox \
    --exclude .ve/ \
    --exclude .ubuntuone/ \
    --exclude Documents/ipod/ \
    $FROM $TO

# now record the last backup date
date > ~/.lastbackupdate
