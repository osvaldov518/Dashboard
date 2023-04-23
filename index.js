process.env.TZ = 'America/Bogota';
const express = require("express");
const { engine } = require("express-handlebars");
// const myconnection = require("express-myconnection");
const bodyParser = require("body-parser");
// const mysql = require("mysql");
const graficasRoutes = require('./routes/graficas')
const monitorbdRoutes = require('./routes/monitorbd')
const passport = require("passport")
const cookieParser = require("cookie-parser")
const session = require("express-session")
const PassportLocal = require("passport-local").Strategy;

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

app.use(express.urlencoded({ extended: true }));
app.use(cookieParser("OV.AM.CC"))
app.use(session({
    secret: "OV.AM.CC",
    resave: true,
    saveUninitialized: true
}))

app.use(passport.initialize());
app.use(passport.session());

passport.use(new PassportLocal(function(username, password, done){
    if(username === "administrador" && password === "Prueba")
        return done(null, {id: 1, name: "Administrador"})
    
    done(null, false);
}));

passport.serializeUser(function(user, done){
    done(null, user.id);
})

passport.deserializeUser(function(id, done){
    done(null, {id: 1, name: "Administrador"})
})

app.get('/', (req, res, next) => {
    if(req.isAuthenticated()) return next();
    res.redirect("/login")
} ,(req, res) => {
    //Si ya iniciamos sesión mostar pagina principal
    res.render('home');

    //Si no hemos iniciado mostrar el login
});

app.get('/login', (req, res) => {
    // Pagina de login
    res.render('login');
});

app.post('/login', passport.authenticate('local', {
    successRedirect: "/",
    failureRedirect: "/login"
}));