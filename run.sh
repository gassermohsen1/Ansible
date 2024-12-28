#!/bin/bash
chmod 600 $HOME/connect_key.pem
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/kube-dependencies.yaml
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/master.yaml
ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/worker.yaml

#wait for 1 minute to let the ingress controller ready 

sleep 60

ansible-playbook -i Ansible/inventory.txt $HOME/Ansible/playbooks/juice-shop.yaml
