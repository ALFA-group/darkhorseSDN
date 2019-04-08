#!/bin/bash

source ./scripts/Parameters.sh

#This should be run on the terminal of h1 of mininet, or the node with IP 0.0.0.1
cd mininet #mininet file where DeceptionServer code is placed.

#starts DeceptionServer with view file nv.nv
python DeceptionServer/main.py <<nvFileInput
$viewFile
nvFileInput
