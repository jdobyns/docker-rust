#!/bin/bash


# if mount cfg not there
if [ ! -f /root/steamcmd/appdir/gmod/garrysmod/cfg/mount.cfg ]; then
	sh /validate.sh
fi

/root/steamcmd/appdir/gmod/srcds_run -game garrysmod +maxplayers 32 +map gm_construc
