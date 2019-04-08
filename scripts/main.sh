#!/bin/bash
date
#start the pox controller running in the background
./scripts/pox_controller.sh &
POX_PID=$!
sleep 3
#start mininet -- deception server and nmap scan are booted up from here
sudo bash ./scripts/mininet.sh & 
mn_pid=$!
wait ${mn_pid}
# kill the pox-controller processes
sudo kill -9 ${POX_PID}
sudo kill -9 $( pidof python2.7 )
