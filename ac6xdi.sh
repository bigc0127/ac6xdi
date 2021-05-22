#!/bin/bash
echo "this script will install drivers for the Netgear AC 6100 or AC 600 USB wiFi adapter"
sudo apt-get install dkms
git clone https://github.com/gnab/rtl8812au.git
sudo dkms add ./rtl8812au
sudo dkms build 8812au/4.2.2
sudo dkms install 8812au/4.2.2
sudo dkms status
echo 8812au | sudo tee -a /etc/modules
echo "press ENTER to reboot"
read dummy_variable
sudo reboot now
