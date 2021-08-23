#!bin/bash

# Set Manual DNS
sudo tee /etc/wsl.conf >/dev/null <<EOF
[network]
generateResolvConf = false
EOF


#Delete existing file
sudo rm /etc/resolv.conf

# regenerate resolv.conf with preferred resolvers
sudo tee /etc/resolv.conf >/dev/null <<EOF
nameserver 1.1.1.1
nameserver 9.9.9.9
EOF
