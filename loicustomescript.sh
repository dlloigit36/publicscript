#!/bin/bash -e

mkdir /tmp/staging
touch /tmp/staging/creativityAtItsBest.md

mkdir /loiscriptfolder
df -h > /loiscriptfolder/dfoutput.txt
sudo apt-get -y update > /loiscriptfolder/updatestatus.txt
sudo apt-get -y install nginx > /loiscriptfolder/nginx.txt
df -h > /loiscriptfolder/dfoutput2.txt"
