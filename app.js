const express = require("express");
const { engine } = require("express-handlebars");
// const myconnection = require("express-myconnection");
const bodyParser = require("body-parser");
// const mysql = require("mysql");
const graficasRoutes = require('./routes/graficas')
const monitorbdRoutes = require('./routes/monitorbd')

const app = express();
app.set('port', 8888);

app.set('views', __dirname + '/views');
app.engine('.hbs', engine({
    extname: '.hbs'
}));

app.set('view engine', 'hbs');

// app.use(myconnection(mysql, {
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     port: 3306,
//     database: 'dbdashboard'
// }));

app.listen(app.get('port'), () => {
    console.log('Servidor corriendo en puerto ', app.get('port'));
});

app.use('/', graficasRoutes);
app.use('/', monitorbdRoutes);

app.get('/', (req, res) => {
    res.render('home');
});