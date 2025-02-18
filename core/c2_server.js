const express = require('express');
const app = express();
const { exec } = require('child_process');

app.get('/cmd', (req, res) => {
  const { device, cmd } = req.query;
  exec(`adb -s ${device} shell ${cmd}`, (err, stdout, stderr) => {
    res.send(stdout || err?.message || stderr);
  });
});

app.listen(3000, () => console.log('[+] C2 Active: http://localhost:3000'));
