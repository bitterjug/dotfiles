#!/bin/bash

FROM=/home/$USER 
TO=/media/$USER/backup

echo -e "\n\nBackup from $FROM to $TO \n"

echo -e "Checking destination drive is mounted..."
if ! mount | grep $TO 
then
    echo "Make sure $TO is mounted!"   
    echo "Did you plug in the USB Drive?"
    exit 1
fi


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
    --exclude .dropbox/command_socket \
    --exclude .dropbox/iface_socket \
    --exclude .ssh/control/ \
    --exclude .vagrant.d/boxes/ \
    --exclude .ve/ \
    --exclude .ubuntuone/ \
    $FROM $TO

# now record the last backup date
date > ~/.lastbackupdate
