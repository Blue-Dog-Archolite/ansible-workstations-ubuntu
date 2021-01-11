# Ansible standup for GUI and ssh only workstations

This is a collectionof ansible scripts that set up a chunk of packages
that I use in my day to day operations. Use of the `gui` flag allows 
for insall of a few Gonome and other display manager tools


## Asumptions
This assumes you have cloned this repo into a folder and it is created:
~/tools and /opt/ansible-up/tools

It also assumes that you have installed Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y


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

#### General Setup

The command `sh ansible-workstations-ubuntu/install.sh` is run.

This then calls the main.yml file which consists of three roles, pre-install, workstation, and postbrew, as well as the additional gui components role.

The preinstall creates a shared directory using the variable `sharedInstallPath: /opt/ansible-up`. This directory is used throughout the ansible installation.

Note that there might be installations of things multiple times. This code can be improved by removing redundancies.

In our post-brew task, we utilize the shared directory to set up a python2 and python3 virtual environment. I tried implementing a similar setup for emacs, however, I am not sure if it is implemented properly or what the best way to implement that is.


#### Additional notes

This current version is designed specifically for WSL, however it should run on other environments. This is handled using a "when: ansible_facts['virtualization_type'] == " statement to help modify behavior depending on the virtualization technology used. In some environments, it has been observed that the virtualization type instead of "wsl" is instead listed as "NA", so the ansible code has been modified to cover this. If you are uncertain as to how ansible is interpreting your environment, please run the command:

ansible -m setup localhost

This installation of the GUI components is omitted for wsl. In particular snapd is used for GUI installs, and snapd relies on systemd, and systemd is not present in wsl. 

##### Lastly

This is still a work in progress. Feel free to update it and configure it to install your desired tools. 