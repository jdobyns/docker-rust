#!/bin/bash

HOME="/root/steamcmd"
RUNCMD="$HOME/steamcmd.sh "

if [ "$UPDATE" == "true" ] || [ "$UPDATE" == "TRUE" ] ; then
	echo "Validtion needed"
	sh /validate.sh
fi

if [ -z "$MAXPLAYERS" ]
then
	MAXPLAYERS=20
fi

RUNCMD="$RUNCMD +maxplayers \"$MAXPLAYERS\""

if [ -z "$MAP" ]
then
	MAP="gm_construct"
fi

RUNCMD="$RUNCMD +gamemode \"$GAMEMODE\""

if [ ! -z "$COLLECTION" ]
then
	if [ -z "$AUTHKEY" ]
	then
		echo "Error, cannot have a collection ID without Authkey"
		exit 0
	else
		RUNCMD="$RUNCMD -authkey \"$AUTHKEY\" +host_workshop_collection \"$COLLECTION\""
	fi
else
	echo "Collection not defined"

fi

$RUNCMD


