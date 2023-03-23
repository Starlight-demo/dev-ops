#!/bin/bash

if [ -f /etc/systemd/system/provedcode.service ]; then
    echo "systemd unit already installed!"
else
    sudo cp ./backend/starlight.service /etc/systemd/system/starlight.service
    sudo systemctl daemon-reload
    echo "systemd unit installed!"
fi