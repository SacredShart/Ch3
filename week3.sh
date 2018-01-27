#!/bin/bash



# The following commands write the information for attached devices to a text file located in /user. 
#replace "user" with the correct profile name.

touch /home/user/Desktop/devices.txt
lsscsi > /home/user/Desktop/devices.txt

# The command bellow captures info about harddisk A on the system. The line begining with "P" shows the devices sysfs path. This info is logged in a file called devices2.txt in the /user folder.

touch /home/user/Desktop/devices2.txt
udevadm info --query=all --name=/dev/sda > /home/user/Desktop/devices2.txt
