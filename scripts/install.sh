#!/data/data/com.termux/files/usr/bin/bash  
termux-change-repo <<< $'1\n1\n'  
pkg update -y  
pkg install -y git nodejs php dnsmasq android-tools  
npm install express  
chmod +x ../core/*.sh  
termux-setup-storage  
