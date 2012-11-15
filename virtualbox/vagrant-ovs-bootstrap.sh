#!/bin/bash

# Ensure git is installed
sudo apt-get update
sudo apt-get -y install git

# git clone OpenStackInstaller
git clone git://github.com/sfrek/OpenStackInstaller.git
cd OpenStackInstaller
git checkout folsom_sfrk
./install-ovs.sh
