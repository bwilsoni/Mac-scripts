#!/bin/bash

# script that runs periodicaly that will change the /etc/motd file
# this file will either ask where is my coffee or where is my beer in ascii art depending on the time of day

AMPM=$(date +"%p")
FILE="/etc/motd"

if  [ $AMPM = "AM" ]; then
    echo "change motd to coffee"
    cat << "EOF" > $FILE
 __    __ _                   _                                 ___       __  __           ___ 
/ / /\ \ \ |__   ___ _ __ ___( )__   _   _  ___  _   _ _ __    / __\___  / _|/ _| ___  ___/ _ \
\ \/  \/ / '_ \ / _ \ '__/ _ \/ __| | | | |/ _ \| | | | '__|  / /  / _ \| |_| |_ / _ \/ _ \// /
 \  /\  /| | | |  __/ | |  __/\__ \ | |_| | (_) | |_| | |    / /__| (_) |  _|  _|  __/  __/ \/ 
  \/  \/ |_| |_|\___|_|  \___||___/  \__, |\___/ \__,_|_|    \____/\___/|_| |_|  \___|\___| () 
                                     |___/                                                     
EOF

elif [ $AMPM = "PM" ]; then
    echo "change motd to beer"
    cat << "EOF" > $FILE
 __    __ _                   _                                 ___                ___ 
/ / /\ \ \ |__   ___ _ __ ___( )__   _   _  ___  _   _ _ __    / __\ ___  ___ _ __/ _ \
\ \/  \/ / '_ \ / _ \ '__/ _ \/ __| | | | |/ _ \| | | | '__|  /__\/// _ \/ _ \ '__\// /
 \  /\  /| | | |  __/ | |  __/\__ \ | |_| | (_) | |_| | |    / \/  \  __/  __/ |    \/ 
  \/  \/ |_| |_|\___|_|  \___||___/  \__, |\___/ \__,_|_|    \_____/\___|\___|_|    () 
EOF
fi
