#!/bin/bash

# This Shell Script aim to use http protocol to upload a file a remote server
# Usually we use the command of SCP or FileZilla to bring the file from remote to local through SSH protocol. But SCP is hard to use and FileZilla need to download another application

# Azure Storage accout only support NFS and SMB protocol

# Manually read the inforation and descride the distributor

# echo -n "Please choose RPM(remote packet manager) system: 0-apt, 1-yum:"
# read distributor

# Auto recongize the current Distributor
if grep -i -q -E "Ubuntu|Debian" /etc/os-release ; then
    # apt
    distri=0
else
    # yum
    distri=1
fi

# if you sure about the current distirbutor

# read -p "Please choose RPM(remote packet manager) system: 0-apt, 1-yum:"


# According to Distributor to download mathched TCPDUMP
if [ $distri -eq 0 ]; then
    sudo apt update
    sudo apt -y install tshark
else
    sudo yum install tshark
fi

# Use SMB 3.0 protocol to bring the file from Linux to storage account. 

# Check if current system install samba
whereis samba

