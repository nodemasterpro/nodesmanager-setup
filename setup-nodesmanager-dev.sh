#!/bin/bash

# Update system
apt update && apt upgrade -y

# Install required packages
apt install git -y

# Remove existing ansible if any
apt remove ansible -y

# Install ansible properly
apt-get install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y

# Clone and run setup playbook
git clone https://github.com/nodemasterpro/nodesmanager-setup.git
cd nodesmanager-setup
ansible-playbook setup-nodesmanager-dev.yml 