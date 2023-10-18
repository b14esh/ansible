#!/bin/bash
find . -type f -name "ansible.log"
#find . -type f -name "ansible.log" -exec cat {} \;
echo -e "\n \n \t \t Clear ALL Files ansible.log? \n \t \t \t  press y and Enter, if clear \n\t\t\t  press any key and Enter, don't clear"
x=
read x
if [[ "$x" == "y" ]]; then
	echo -e "\n \t \t You press y, file anseble.log clear"
	find . -type f -name "ansible.log"  -exec sed -i 'd' "{}" \;
else
	echo -e "\n\t\t\tNofing, exit clear"
	exit
fi
