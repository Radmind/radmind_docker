#!/bin/bash

if [ ! -e "/var/radmind/cert" ]; then
	mkdir -p /var/radmind/cert
fi
if [ ! -e "/var/radmind/client" ]; then
	mkdir /var/radmind/client
fi
if [ ! -e "/var/radmind/postapply" ]; then
	mkdir /var/radmind/postapply
fi
if [ ! -e "/var/radmind/preapply" ]; then
	mkdir /var/radmind/preapply
fi
if [ ! -e "/var/radmind/config" ]; then
	echo "* test.K" > /var/radmind/config
	if [ ! -e "/var/radmind/command" ]; then
		mkdir /var/radmind/command
	fi
	if [ ! -e "/var/radmind/command/test.K" ]; then
		echo "# hi from radmind" > /var/radmind/command/test.K
	fi
fi

/usr/local/sbin/radmind -f