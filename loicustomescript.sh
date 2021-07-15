#!/bin/bash -e

# Add preview banner to MOTD
cat >> /etc/motd << EOF
*******************************************************
**            This VM was built from the: 1234       **
**      !! AZURE VM IMAGE BUILDER Custom Image !!    **
**         You have just been Customized :-)         **
*******************************************************
EOF

mkdir /loiscriptfolder
df -h > /loiscriptfolder/dfoutput.txt
sudo apt-get -y update > /loiscriptfolder/updatestatus.txt
sudo apt-get -y install nginx > /loiscriptfolder/nginx.txt
df -h > /loiscriptfolder/dfoutput2.txt
