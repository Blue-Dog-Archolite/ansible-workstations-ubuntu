#!/usr/bin/env bash

# Clone this package
# git clone https://github.com/Blue-Dog-Archolite/ansible-workstations-ubuntu.git
# change into directory
# cd ansible-workstations-ubuntu

sudo apt update -y

# install python and pip
sudo apt install python3.8
sudo apt install python3-pip -y

#install git and ansible
sudo apt install -y git ansible 

# verify working directory 
cd ansible-workstations-ubuntu

# Execute workstation install
ansible-playbook main.yml -i ./hosts -c local
