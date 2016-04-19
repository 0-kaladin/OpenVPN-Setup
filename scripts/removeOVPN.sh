#!/usr/bin/env bash
# PiVPN: revoke client script

INSTALL_USER=$(cat /etc/pivpn/INSTALL_USER)

echo "::: Please enter the Name of the client to be revoked:"
read NAME

cd /etc/openvpn/easy-rsa
source /etc/openvpn/easy-rsa/vars

./revoke-full $NAME
echo "::: Certificate revoked, removing ovpns from /home/$INSTALL_USER/ovpns"
rm /home/$INSTALL_USER/ovpns/$NAME.ovpn

