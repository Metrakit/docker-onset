#!/bin/bash

if [ ! -f "./start_linux.sh" ]; then
    export CPU_MHZ=2000
    /srv/steamcmd.sh  +login anonymous +force_install_dir /srv/OnsetServer +app_update 1204170 validate +quit
fi

./start_linux.sh
