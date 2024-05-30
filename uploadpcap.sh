#!/bin/bash

# This Shell Script aim to use http protocol to upload a file a remote server
# Usually we use the command of SCP or FileZilla to bring the file from remote to local through SSH protocol. But SCP is hard to use and FileZilla need to download another application

# Azure Storage accout only support NFS and SMB protocol

# Recongize the current Distributor

if grep -i -q -E "Ubuntu|Debian" /etc/os-release ; then
    # apt
    sudo apt update
    distri=0
else
    # yum
    yum update
    distri=1
fi

# According to Distributor to download mathched TCPDUMP

# Use NFS protocol to bring the file from Linux to storage account. 