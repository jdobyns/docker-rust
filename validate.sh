#!/bin/bash

echo "Begin content validation"
HOME="/root/steamcmd"
# A convenience function, to save us some work
update_server() {
	# Read the app id and the directory into a variable

	APP_ID=$1
	DIR=$2

	# Call SteamCMD with the app ID we provided and tell it to install
	$HOME/steamcmd.sh +login anonymous +app_update $APP_ID validate +quit
}

update_server 258550  

exit 0

