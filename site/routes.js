const express = require('express');
const router = express.Router();
const handlers = require('./handlers')
const check = require('../middlewares/check_token')

router.post('/add', check, handlers.add)

module.exports = router;