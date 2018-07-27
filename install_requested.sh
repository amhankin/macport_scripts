#!/bin/bash

# List of programs to install
portlist=requested.txt

# Make sure the user would like to continue
echo
echo "This script will install the following software macports:"
cat $portlist
echo
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line

# Install all ports found in portslist if yes response
if [[ $REPLY =~ ^[Yy]$ ]]
then
	while read line
	do
		port -N install ${line}
	done <$portlist
fi

