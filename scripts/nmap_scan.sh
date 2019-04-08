#!/bin/bash

source ./scripts/Parameters.sh

#generateIPs
python $ipGenerator "$scanType" "$hostIP" "$numberIPsToGenerate" "$smallestIP" "$largestIP" "$nmapBatchSize" "$outputIPFile"
wait

iterations=$(expr $numberIPsToGenerate / $nmapBatchSize)
for ((i = 0; i < $iterations ; i++))
    do
        nmap -T$nmapScanSpeed -v -sn -n -oN "${outputNMAPScanFile}${i}.txt" -iL $outputIPFile$i
    done
