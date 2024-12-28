#!/bin/bash

# Define the paths to the files containing the IPs
master_ip_file="~/Ansible/masternode_ip"
worker_ip_file="~/Ansible/workernode_ip"

# Read the IPs from the files
masternode_ip=$(cat $master_ip_file)
workernode_ip=$(cat $worker_ip_file)

# Define the path to your inventory file
inventory_file="inventory.txt"

# Replace the placeholders in the inventory file with the actual IPs
sed -i "s/masternode_ip/$masternode_ip/" $inventory_file
sed -i "s/workernode_ip/$workernode_ip/" $inventory_file

echo "Inventory file updated with the correct IPs."
