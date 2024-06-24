#!/bin/bash

# Don't forget to change the pakage name
package=package_name_here

if command -v $package
then
    echo "$package is available, let's run it..."
    sleep 3
    $package
else
    echo "$package is not available, installing it..."
    sudo apt update -y >> package_install_results.log
    sudo apt install -y $package >> package_install_results.log
if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install" >> package_install_failure.log
fi
fi
