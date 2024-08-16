#!/bin/bash

# Set the URL of the new hosts file
URL="https://raw.githubusercontent.com/caroseuk/sitecheck/main/hosts.txt"

# Make sure we're running as root
if [ $EUID -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

# Download the new hosts file from GitHub
curl -o /tmp/new-hosts-file.txt $URL

# Overwrite the existing hosts file with the new one
cp /tmp/new-hosts-file.txt /etc/hosts

# Set permissions to allow editing of the hosts file
chmod 644 /etc/hosts
