#!/bin/bash
chmod 600 $HOME/connect_key.pem
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/kube-dependencies.yaml
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/master.yaml
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/worker.yaml
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/juice-shop.yaml
