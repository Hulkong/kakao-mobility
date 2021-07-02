const express = require('express');
const app = express();
const os = require("os");
const hostname = os.hostname();

app.get('/', (req, res) => {
  const name = process.env.NAME || 'World';
  res.send(`Hello ${hostname}!`);
});

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`helloworld: listening on port ${port}`);
});