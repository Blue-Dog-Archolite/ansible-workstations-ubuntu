# Ansible standup for GUI and ssh only workstations

This is a collectionof ansible scripts that set up a chunk of packages
that I use in my day to day operations. Use of the `gui` flag allows 
for insall of a few Gonome and other display manager tools


## Runbook Steps
- clone this repo to the machine you wish to ansible
- execute `sh ansible-workstations-ubuntu/install.sh`
- Enjoy


## Two Modes for Install

### GUI Workstation
ansible-playbook main.yml -i ./hosts -c local --tags gui


### Terminal workstation
ansible-playbook main.yml -i ./hosts -c local


#### Optional Use of password sudo
Append `--ask-become-pass` for password based sudo

