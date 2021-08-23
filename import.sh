#!bin/bash

#Update
sudo apt update -y
sudo apt upgrade -y

# Install Tools
sudo apt install curl dnsutils whois git ipcalc ftp telnet lftp mtr nmap -y

# Import keys folder
cp -pr /mnt/c/wsl-backup/.ssh ~/.
chmod 700 ~/.ssh 
chmod 600 ~/.ssh/id_rsa

#Import SSH conf
sudo cat /mnt/c/wsl-backup/ssh_config > /etc/ssh/ssh_config

#import bashrc
sudo cat /mnt/c/wsl-backup/.bashrc > ~/.bashrc

# Install Scripts
git clone git@github.com:MajesticTechie/scripts.git

# Set Manual DNS
sudo curl https://raw.githubusercontent.com/MajesticTechie/wsl-backup/main/wsl.conf > /etc/wsl.conf

# regenerate resolv.conf with preferred resolvers
sudo rm /etc/resolv.conf
sudo tee /etc/resolv.conf >/dev/null <<EOF
nameserver 1.1.1.1
nameserver 9.9.9.9
EOF
