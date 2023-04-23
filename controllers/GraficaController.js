const request = require("request");

let index = (req, res) => {
    res.render('displays/index');
}

let graficas = (req, res) => {
    request("https://interfazbt-v81b.onrender.com/apidashboard",(err,response,body)=>{
        if (!err){
            const data = JSON.parse(body);
            res.render('displays/graficas', { 
                layout:"main",
                datos : data
            });
        }
    })
}

module.exports = {
    index: index,
    graficas: graficas,
}