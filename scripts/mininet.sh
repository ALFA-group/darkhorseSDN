#!/bin/bash
source ./scripts/Parameters.sh

#start mininet with a single controller and 12 nodes, MAX in ascending order from 0
#a remote controller, it connects to our pox contoller running in the other terminal
#and then run mn_script once mininet is open
echo "Begin mininet at `date`"
sleep 3s
mn --topo=single,$numberHosts --mac --controller=remote <<mininetCommands
source ./scripts/mn_script

mininetCommands
