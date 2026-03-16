#!/bin/bash

#created by pwnk1t 
#https://www.youtube.com/@pwnk1t
#Cyber30 stop banning my ip in the games 


################################
#       King Protection        #
################################

echo "[+] creating King protection ⚙️"

sleep 1

read -p "Your Username: " USER

echo "[+] installing..."


cat <<EOF > /etc/systemd/system/KOTH.service
[Unit]
Description=System Update

[Service]
ExecStart=/bin/bash -c 'while true; do echo $USER > /root/king.txt; sleep 0.5; done'
Restart=always
RestartSec=1

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable KOTH.service
systemctl start KOTH.service

sleep 2

echo "[+] protection created 👑"
sleep 1
echo "[+] if service is not running do -> systemctl start KOTH.service"
sleep 1
echo "[+] check systemctl status KOTH.service"
echo ""
sleep 1
echo "[💀] created by pwnk1t [💀]"
echo ""
sleep 1 
echo " 🕷️ enjoy the game 🕷️"
sleep 1
echo ""
