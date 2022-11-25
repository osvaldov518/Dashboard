const express = require('express');
const GraficaController = require('../controllers/GraficaController');

const router = express.Router();

router.get('/displays', GraficaController.index);
router.get('/graficas', GraficaController.graficas);

module.exports = router;