#!/bin/bash

echo "Begin content validation"
HOME="/root/steamcmd"
APPDIR="/root/steamcmd/appdir"
# A convenience function, to save us some work
update_server() {
	# Read the app id and the directory into a variable

	APP_ID=$1
	DIR=$2

	# Call SteamCMD with the app ID we provided and tell it to install
	$HOME/steamcmd.sh +login anonymous +force_install_dir "$APPDIR/$DIR" +app_update $APP_ID validate +quit
}

# Now the script actually runs update_server ( which we just declared above ) with the id of the application ( 4020 is Garry's Mod ) and the name of the directory we want the server to be hosted from:

update_server 4020 "gmod"
update_server 232330 "css"
#update_server 232250 "tf2"

# Add any additional servers here by repeating the above, but using a different directory name.

#copy needed files in place
cp "$APPDIR/css/bin/libstdc++.so.6" "$APPDIR/gmod/bin/"
cp /mount.cfg "$APPDIR/gmod/garrysmod/cfg/"

# Exit with status code 0 ( which means OK )
exit 0

