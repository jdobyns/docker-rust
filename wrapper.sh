#!/bin/bash

HOME="/root/steamcmd"
RUNCMD="$HOME/steamcmd.sh -server.port 28015"

if [ "$UPDATE" == "true" ] || [ "$UPDATE" == "TRUE" ] ; then
	echo "Validtion needed"
	sh /validate.sh
fi

if [ -z "$MAXPLAYERS" ]
then
	MAXPLAYERS=20
fi
RUNCMD="$RUNCMD -server.maxplayers \"$MAXPLAYERS\""

if [ -z "$HOSTNAME" ]
then
        HOSTNAME="rust.opsflo.com"
fi
RUNCMD="$RUNCMD -server.hostname \"$HOSTNAME\""

if [ -z "$SEED" ]
then
        SEED=`echo $[ 1 + $[ RANDOM % 9999999 ]]`
fi
RUNCMD="$RUNCMD -server.seed \"$SEED\""

if [ -z "$WORLDSIZE" ]
then
        WORLDSIZE=4000
fi
RUNCMD="$RUNCMD -server.worldsize \"$WORLDSIZE\""

if [ -z "$IDENTITY" ]
then
        IDENTITY="rust.opsflo.com"
fi
RUNCMD="$RUNCMD -server.identity \"$IDENTITY\""

if [ -z "$DESCRIPTION" ]
then
        DESCRIPTION="rust.opsflo.com"
fi
RUNCMD="$RUNCMD -server.description \"$DESCRIPTION\""

if [ -z "$URL" ]
then
        URL="https://www.docker.com/"
fi
RUNCMD="$RUNCMD -server.url \"$URL\""

if [ -z "$HEADER" ]
then
        HEADER="https://www.docker.com/sites/default/files/island_1.png"
fi
RUNCMD="$RUNCMD -server.headerimage \"$HEADER\""


$RUNCMD


