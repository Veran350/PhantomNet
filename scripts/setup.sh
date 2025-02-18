#!/data/data/com.termux/files/usr/bin/bash  
pkg update -y  
pkg install -y git python nodejs clang php dnsmasq  
git clone https://github.com/Veran350/PhantomWiFi-Final  
cd PhantomWiFi-Final  
chmod +x scripts/* core/*.py core/zero_click/*  
clang -framework Foundation core/zero_click/ios_exploit.m -o implants/ios_pwn  
termux-setup-storage  
mv .termux/boot ~/.termux/  
echo "Setup done! Reopen Termux."  
