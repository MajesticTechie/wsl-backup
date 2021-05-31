#!bin/bash

# Create "wsl-backup" folder on the C drive
mkdir /mnt/c/wsl-backup

#clear backup folder (if used before)
rm -rf /mnt/c/wsl-backup/*

#Backup SSH keys
cp -pr .ssh/ /mnt/c/wsl-backup/

#Backup SSH conf
cp /etc/ssh/ssh_config /mnt/c/wsl-backup/

#backup bashrc
cp .bashrc /mnt/c/wsl-backup/
