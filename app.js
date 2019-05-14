const express = require('express');

const color = process.env.APP_COLOR || 'blue';
const podIP = process.env.POD_IP || '<unset>';
const env = process.env.ENV || 'DEV';

const app = express();
const port = 5000;

let hitCounter = 0;

app.set('views', './views');
app.set('view engine', 'pug');

app.get('/', function (_, res) {
    hitCounter++;
    res.render('index', { title: `${color} site`, ip: podIP, counter: hitCounter, color: color, env: env})
});

app.get('/health', function (_, res) {
    res.end("ok");
});


app.listen(port, () => console.log(`Example app listening on port ${port}!`));