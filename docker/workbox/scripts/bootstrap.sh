#!/bin/bash
################################ Note ###################################
### This simple bootstrap file adds configuration to your container     #
### when it is started. Bootstrap is a term commonly used to describe   #
### the process of redying a machine for use when it is started./       #
### run commands when the images is created to save time                #
#### ------------------------- End Note --------------------------------#

## create new ssh keys . This creates new ssh keys for use when run
## it call an expect script from /opt/ssh-keys.sh
echo " - removing old keys - "
  rm -f /root/.ssh/id_*
  /opt/ssh-keys.sh
echo "success! just created a fresh set of keys for you"
