const express = require('express');
const MonitorbdController = require('../controllers/MonitorbdController');

const router = express.Router();

router.get('/displays', MonitorbdController.index);
router.get('/monitorbd', MonitorbdController.monitorbd);

module.exports = router;