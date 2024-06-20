#!/bin/bash

release_file=/etc/os-release
error_log=/var/log/update_error.log
success_log=/var/log/update_success.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error has occurred, please check the $error_log"
    else
        echo "Update successful. Feel free to check the log here: $success_log"
    fi
}

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file || grep -q "Mint" $release_file
then
    # The host is based on Debian/Ubuntu. Run the apt update command.
    sudo apt update -y 1>>$success_log 2>>$error_log 
    sudo apt dist-upgrade -y 1>>$success_log 2>>$error_log
    check_exit_status

fi
