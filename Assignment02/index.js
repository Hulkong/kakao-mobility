const express = require('express');
const app = express();
const path = require('path');
const indexRouter = require('./routes/index');
const port = process.env.PORT || 8080;


app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');


app.use(express.json());
app.use(express.static(path.join(__dirname, 'static')));
app.use('/', indexRouter);


app.listen(port, () => {
  console.log(`listening on port ${port}`);
});