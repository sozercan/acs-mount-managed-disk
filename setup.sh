#!/bin/bash
nodes=$(kubectl get node -o name | grep -o 'k8s-agent-[0-9]*-[0-9]')

for node in $nodes; do
    ssh -t -oStrictHostKeyChecking=no $node "echo 'Working on $node...' && curl -L -sf https://raw.githubusercontent.com/sozercan/acs-mount-managed-disk/master/autopart.sh | sudo bash"
done
