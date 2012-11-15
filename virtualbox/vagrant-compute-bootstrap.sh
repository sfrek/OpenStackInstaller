#!/bin/bash

# Ensure git is installed
sudo apt-get update
sudo apt-get -y install git

# git clone OpenStackInstaller
git clone git://github.com/sfrek/OpenStackInstaller.git
cd OpenStackInstaller
git checkout folsom_sfrk
sed -i 's/192.168.1.12/172.31.255.201/g' openstack.conf
./install-folsom.sh compute
echo "172.31.255.201 controller" >> /etc/hosts
