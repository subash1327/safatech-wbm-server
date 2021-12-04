const express = require('express');
const router = express.Router();
const handlers = require('./handlers')
const machine = require('./machine/routes')
const site = require('./site/routes')
const user = require('./user/routes')
const check = require('./middlewares/check_token')

router.use('/machine', check, machine)
router.use('/site', check, site)
router.use('/user', user)
router.post('/subscribe', handlers.subscribe)
router.get('/test_not', handlers.test_not)
router.get('/get/:name',check, handlers.get)
router.get('/lang/:code',  handlers.lang)

module.exports = router;