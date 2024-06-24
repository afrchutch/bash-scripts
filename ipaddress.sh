#!/bin/bash

echo $(sudo ifconfig | grep broadcast | awk '{print $2}')
