process.env.TZ = 'America/Bogota';
const express = require("express");
const { engine } = require("express-handlebars");
// const myconnection = require("express-myconnection");
const bodyParser = require("body-parser");
// const mysql = require("mysql");
const graficasRoutes = require('./routes/graficas')
const monitorbdRoutes = require('./routes/monitorbd')

const app = express();

app.set('views', __dirname + '/views');
app.engine('.hbs', engine({
    extname: '.hbs'
}));

app.set('view engine', 'hbs');

app.set('port', process.env.PORT || 8888);
app.listen(app.get('port'), () => {
    console.log('Servidor corriendo en puerto ', app.get('port'));
});

app.use('/', graficasRoutes);
app.use('/', monitorbdRoutes);

app.get('/', (req, res) => {
    res.render('home');
});