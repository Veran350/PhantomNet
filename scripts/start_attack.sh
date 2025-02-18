#!/data/data/com.termux/files/usr/bin/bash  
python core/ap_manager.py &  
node core/exploit_engine.js &  
node core/c2_server.js &  
