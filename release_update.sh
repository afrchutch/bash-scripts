#!/bin/bash

release_file=/etc/os-release

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian/Ubuntu. Run the apt update command.
    sudo apt update -y
    sudo apt dist-upgrade -y
fi
