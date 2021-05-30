#!bin/bash

# Import keys folder
cp -pr /mnt/c/wsl-backup/.ssh ~/.
chmod 700 ~/.ssh 
chmod 600 ~/.ssh/id_rsa

#Import SSH conf
sudo cat /mnt/c/wsl-backup/ssh_config > /etc/ssh/ssh_config

#import bashrc
sudo cat /mnt/c/wsl-backup/.bashrc > ~/.bashrc

# Install Tools
sudo apt install dnsutils whois git ipcalc ftp telnet lftp mtr nmap -y

# Install Scripts
git clone git@github.com:MajesticTechie/scripts.git

# Set Manual DNS
sudo echo "[network] 
generateResolvConf = false" > /etc/wsl.conf

# regenerate resolv.conf
sudo rm /etc/resolv.conf
sudo echo "
nameserver 1.1.1.1
nameserver 9.9.9.9" > /etc/resolv.conf
