const knex = require('../knex')
const fs = require('fs')

async function addLog(data, type, machine){
    let log = {'data': data, 'port': machine.port, 'type': type, 'date': new Date(), 'site_id': machine.site_id, 'machine_id': machine.id}
    socket.emit('log', log, machine.site_id)
    await knex.insert('logs', log )
}

exports.log = async (data, machine) => {
    var type = 'msg'
    if(data.includes('ERR') || data.includes('Error')) type = 'err'
    addLog(data, type, machine)
}


exports.add = async (data, machine) => {
    var type = 'msg'
    if(data.includes('ERR') || data.includes('Error')) type = 'err'
    addLog(data, type, machine)
}

exports.get = async (req, res) => {
    let { id, limit, offset, from, to } = req.query
    let table = 'logs'
    let query = knex.knex(table).select('*')
    query = query.where(b => {
        b.where('site_id', '=', `${req.user.site_id}`)
        if(id) b.where('machine_id', '=', `${id}`)
        if(from) b.where('date', '>=', from)
        if(to) b.where('date', '<', to)
    })
    query = query.orderBy('date', 'desc')
    let data = await query.limit(limit || 1000).offset(offset || 0)
    res.send({
        success: true,
        message: 'Successfully fetched',
        data: data
    })
}

exports.download = async (req, res) => {
    let { id, limit, offset, from, to } = req.query
    let table = 'logs'
    let query = knex.knex(table).select('*')
    query = query.where(b => {
        b.where('site_id', '=', `${req.user.site_id}`)
        if(id) b.where('machine_id', '=', `${id}`)
        if(from) b.where('date', '>=', from)
        if(to) b.where('date', '<', to)
    })
    query = query.orderBy('date', 'desc')
    let data = await query.limit(limit || 1000).offset(offset || 0)
    console.log(data)
    let log_path = `./logs/log_${new Date().getTime()}.txt`;
    fs.appendFileSync(log_path, '');
    data.forEach(log => {
        fs.appendFileSync(log_path, `${log.date} ${log.data}\n`);
    });
    res.download(`${log_path}`)
}