const express = require('express')
const http = require('http')
var bodyParser = require('body-parser')
const cors = require('cors')
const path = require('path')
const fs = require('fs')
global.local = true
const env_path = path.join(__dirname, local ? 'config.json' : 'config heroku.json')
global.env = JSON.parse(fs.readFileSync(env_path))
const knex = require('./knex')

const routes = require('./routes')

const PORT = process.env.PORT || 3000

const app = express()
global.socket = require('./socket/socket');
global.machine = require('./machine/machine');
global.notification = require('./notification/notification');

machine.init()
const io = socket.io;

app.use(cors())

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))
app.use('/api/v1', routes)
app.use(express.static('public'))

const server = http.createServer(app)
io.attach(server, {
    pingInterval: 10000,
    pingTimeout: 5000,
    cookie: false
  });
server.listen(PORT, () => {
  console.log('Server Started')
})

app.get('/test', async (req, res) => {
  res.send('test')
})


app.get('/createtables', async (req, res) => {
    await knex.knex.schema.dropTableIfExists('payments');
    await knex.knex.schema.createTableIfNotExists('payments', (table) => {
        table.string('merchantTransactionID')
        table.string('ZRNumber')
        table.string('deviceNumber')
        table.string('deviceType')
        table.string('terminalID')
        table.string('accountNumber')
        table.string('hashedEpan')
        table.string('expirationDate')
        table.string('cardIssuer')
        table.string('cardType')
        table.string('responseStatus')
        table.string('responseCode')
        table.string('responseTextMessage')
        table.string('originalTransactionAmount')
        table.string('transactionAmount')
        table.string('surchargeAmount')
        table.string('approvalCode')
        table.string('currencyCode')
        table.string('transactionDate')
        table.string('transactionTime')
        table.string('transactionTimeOffset')
        table.string('transactionIdentifier')
        table.string('batchID')
        table.string('customerReceipt')
        table.string('merchantReceipt')
        table.string('site_id')
        table.string('machine_id')
        table.timestamp('date').defaultTo(knex.knex.raw('CURRENT_TIMESTAMP'));
    })
    await knex.knex.schema.dropTableIfExists('logs');
    await knex.knex.schema.createTableIfNotExists('logs', (table) => {
        table.text('data')
        table.string('port')
        table.string('type')
        table.string('site_id')
        table.string('machine_id')
        table.timestamp('date').defaultTo(knex.knex.raw('CURRENT_TIMESTAMP'));
    })

    await knex.knex.schema.dropTableIfExists('sites');
    await knex.knex.schema.createTableIfNotExists('sites', (table) => {
        table.string('id')
        table.string('name')
        table.string('key')
        table.timestamp('expire')
        table.integer('max_users')
        table.integer('max_machines')
        table.timestamp('date').defaultTo(knex.knex.raw('CURRENT_TIMESTAMP'));
    })

    await knex.knex.schema.dropTableIfExists('users');
    await knex.knex.schema.createTableIfNotExists('users', (table) => {
        table.string('id')
        table.string('site_id')
        table.text('hash')
        table.string('role')
        table.jsonb('permissions')
        table.string('login')
        table.string('name')
        table.timestamp('date').defaultTo(knex.knex.raw('CURRENT_TIMESTAMP'));
    })

    await knex.knex.schema.dropTableIfExists('localizations');
    await knex.knex.schema.createTableIfNotExists('localizations', (table) => {
        table.string('key')
        table.jsonb('data')
    })

    await knex.knex.schema.dropTableIfExists('machine');
    await knex.knex.schema.createTableIfNotExists('machine', (table) => {
        table.string('id')
        table.string('site_id')
        table.string('name')
        table.string('ip')
        table.string('port')
        table.string('knet')
    })

    await knex.insert('users', {
      'id': 'super',
      'name': 'Super Admin',
      'hash': 'safatech',
      'role': 'super',
      'login': 'superadmin'
    })
    
    res.send("TABLES CREATED")
});