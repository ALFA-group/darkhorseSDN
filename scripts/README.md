# Script Use Information

To run these scripts from terminal call `sudo bash ./scripts/main.sh`
You must call `sudo` because miniment must run as root.

The above command must be run from a directory x that has a specific file structure, which is as follows:
directory x that contains folders `scripts`, `pox`, and `mininet`
-`pox` directory is directly from download, in the `pox` folder in the pox directory exists the folder `SDNController_ncds` that contains the code governing the SDN controller
-`scripts` directory is this directory
-`mininet` directory has all other files for the Deception system, importantly the directories `DeceptionServer` and `ViewFileExamples`


The script `mn_script` has the commands that run in `mininet`
-the first command opens a new terminal from `h1` and runs the deceptionserver on it
-the next two commands release and the request a new DHCP lease for the target node from the DeceptionServer
-The final command opens runs an nmap scan from the target node The output of the nmap scan will be in a file entitled `nmapOutput.txt` that is located in diretory x.


To change the view file, changes must be made in `deception_server.sh` and `pox_controller.sh`

There is also a Parameters file included, which is where different parameters from the scripts can be adjusted. During the course of a coevolutionary search, this Parameters file will be read from and written to, to find optimal attack and defense strategies.
