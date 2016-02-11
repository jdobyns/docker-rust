#!/bin/bash

/root/steamcmd/steamcmd.sh +login anonymous +force_install_dir /root/steamcmd/appdir/gmod +app_update 4020 validate +quit

/root/steamcmd/steamcmd.sh +login anonymous +force_install_dir /root/steamcmd/appdir/css +app_update 232330 validate +quit

/root/steamcmd/steamcmd.sh +login anonymous +force_install_dir /root/steamcmd/appdir/tf2 +app_update 232250 validate +quit

cp /mount.cfg /root/steamcmd/appdir/gmod/garrysmod/cfg/
