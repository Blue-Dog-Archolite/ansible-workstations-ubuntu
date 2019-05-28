# Two Modes

## GUI Workstation
ansible-playbook main.yml -i ./hosts -c local --tags gui


## Terminal workstation
ansible-playbook main.yml -i ./hosts -c local



### Use of password sudo

Append `--ask-become-pass` for password based sudo
