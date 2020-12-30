#!/usr/bin/env bash

# Clone this package
# git clone https://github.com/Blue-Dog-Archolite/ansible-workstations-ubuntu.git
# change into directory
# cd ansible-workstations-ubuntu

# install python and pip
sudo apt-get install python3.8
python3 -m ensurepip --default-pip

#install git
sudo apt install git

# Install ansible
#pip3 install ansible
sudo apt install ansible

# verify working directory 
cd ansible-workstations-ubuntu

# Execute workstation install
ansible-playbook main.yml -i ./hosts -c local
