#!/bin/bash

source ./scripts/Parameters.sh

#go into pox folder where we have placed our controller code
cd pox

#Start our SDN Controller with view file nv.nv
./pox.py log.level --DEBUG SDNController_ncds.Controller <<nvFileInput
$viewFile
$outputScannerDetectionFile
nvFileInput
