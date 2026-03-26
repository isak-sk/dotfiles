#!/bin/bash

echo "current nvidia"
nvidia-smi
sleep 5

echo "IF OK THEN OK TO REBOOT. ELSE WAIT"
sudo akmods


echo "current version"

while true; do
	modinfo -F version nvidia

	sleep 10
done	
