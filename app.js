const express = require('express');

const color = process.env.APP_COLOR || 'blue';

const app = express();
const port = 3000;

app.set('views', './views');
app.set('view engine', 'pug');

app.get('/', function (req, res) {
    res.render('index', { title: `${color} site`, message: `Welcome to the ${color} site!`, color: `${color}`})
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));