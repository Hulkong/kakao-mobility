const express = require('express');
const app = express();
const os = require("os");
const hostname = os.hostname();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send(`Hostname is ${hostname}`);
});

app.listen(port, () => {
  console.log(`helloworld: listening on port ${port}`);
});