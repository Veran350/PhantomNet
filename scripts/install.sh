#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage
termux-change-repo <<< $'1\n1\n'
pkg update -y
pkg install -y git nodejs python php dnsmasq android-tools
npm install express@4.18.2
mkdir -p core/persistence implants
chmod 777 core/*.sh scripts/*.sh core/persistence/*
termux-fix-shebang scripts/*.sh
