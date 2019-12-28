#!/bin/bash

export CPU_MHZ=2000

if [ ! -f "./start_linux.sh" ]; then
    /srv/steamcmd.sh  +login anonymous +force_install_dir /srv/OnsetServer +app_update 1204170 validate +quit
fi

./start_linux.sh
