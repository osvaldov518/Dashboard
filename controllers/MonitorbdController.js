let index = (req, res) => {
    res.render('displays/index');
}

let monitorbd = (req, res) => {
    res.render('displays/monitorbd');
}

module.exports = {
    index: index,
    monitorbd: monitorbd,
}