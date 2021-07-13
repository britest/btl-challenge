#!/bin/bash

# Author: Gerard Onochie
#
# Version: v0.1
#
# Date: 09-07-021
#
# Provides:  Check if the /etc/passwd file is chnaged using diff
#
# Log when the file changes into a log file in the /var/log/ dir
#
# A crontab file will be placed in the /etc/cron.d/ directory
#
# The cronjob will run this script every 15 minutes.
#
# Make a copy of /etc/passwd file
 
cp /etc/passwd /etc/passwd-bkup
diff /etc/passwd /tmp/passwd-bkup > /var/log/detect-in-passwd-file.txt
comp_value=$?
if [ $comp_value -eq 1 ]
then
   echo "WARNING /etc/passwd modified!!!!"
else    
   echo "No changes"
fi   

