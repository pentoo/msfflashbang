#!/bin/sh
rm -f super_secret_evil_hacker_file.txt picture_of_a_victim.jpg voice_of_a_victim.wav

if [ "${1}" = "--mobile" ]
then
	#ifconfig eth0 172.16.42.42/24 up
	msfconsole -r flashbang_mobile.rc | tee super_secret_evil_hacker_file.txt
else
	ifconfig eth0 192.168.1.42/24 up
	msfconsole -r flashbang.rc | tee super_secret_evil_hacker_file.txt
fi
