!/bin/bash

ipGenerator=IP/IPGenerator.py
scanType=1
hostIP=46.162.6.130
percentToScan=60
numberIPsToGenerate=921
numberHosts=28
nmapBatchSize=5
nmapScanSpeed=3
smallestIP=46.162.1.0
largestIP=46.162.6.255
outputIPFile="IP/IPBatch"
viewFile=../mininet/ViewFileExamples/customNV.nv
outputNMAPScanFile="NmapScanResults/batch"
outputScannerDetectionFile="scannerResults.txt"
