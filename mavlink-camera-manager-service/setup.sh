#!/bin/bash
# © 2023 Aymen Rachdi <contact@aymenrachdi.xyz>

if command -v mavproxy.py &> /dev/null
then
    echo "MAVProxy is installed."
    sudo cp hosts /etc/
    sudo cp pixhawk_qgc_connector.service /etc/systemd/system
    sudo systemctl daemon-reload
    sudo systemctl enable pixhawk_qgc_connector.service
    sudo systemctl start pixhawk_qgc_connector.service
    sudo systemctl status pixhawk_qgc_connector.service
else
    echo "MAVProxy is not installed. Please install Mavproxy before proceeding"
fi


