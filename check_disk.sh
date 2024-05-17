#!/bin/bash
#################################################
#                                               #
# A shell script to check disk usage and free   #
# space on a Linux system.                      #
#                                               #
#################################################

# Function to check disk usage
check_disk_usage() {
    echo -e "\nDisk Usage:"
    df -h --total | awk 'NR==1 || /total/'
}

# Function to check disk free space
check_disk_free() {
    echo -e "\nDisk Free Space:"
    df -h | awk 'NR==1 {print} !/Filesystem/ {print $4 " free on " $6}'
}

# Execute the functions
check_disk_usage
check_disk_free

# Additional details
echo -e "\nDetailed Disk Usage by Mount Point:"
df -h

echo -e "\n"
