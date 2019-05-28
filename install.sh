#!/usr/bin/env bash

# install python and git
sudo apt install python python-pip git -y

# Install ansible
pip install ansible


# Clone package
git clone https://github.com/Blue-Dog-Archolite/ansible-workstations-ubuntu.git

# change into directory
cd ansible-workstations-ubuntu

# Execute workstation install
ansible-playbook main.yml -i ./hosts -c local
