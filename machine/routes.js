const express = require('express');
const router = express.Router();
const handlers = require('./handlers')
const logger = require('./logger')
const check = require('../middlewares/check_token')

router.post('/add', handlers.add)
router.post('/start', handlers.start)
router.post('/stop', handlers.stop)
router.post('/delete', handlers.delete)
router.get('/logs', check, logger.get)
router.get('/logs/download',check, logger.download)

module.exports = router;