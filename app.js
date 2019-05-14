const express = require('express');

const color = process.env.APP_COLOR || 'blue';
const podIP = process.env.POD_IP || 'unknown';

const app = express();
const port = 5000;

app.set('views', './views');
app.set('view engine', 'pug');

app.get('/', function (_, res) {
    res.render('index', { title: `${color} site`, message: `Welcome to the ${color} site, hosted on pod with ip ${podIP}`, color: `${color}`})
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));