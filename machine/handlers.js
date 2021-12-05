// const db = require('../db')
const knex = require('../knex')
const machine = require('./machine')

exports.add = async (req, res) => {
    let { id, name, ip, port, knet } = req.body.machine

    let data = {
        'id': id,
        'name': name,
        'port': port,
        'knet': knet,
        'ip': ip,
        'site_id': req.user.site_id
    }

    let exists = await knex.count('machine', {
        conditions: [
            ['id', '=', data.id]
        ]
    });

    machine.update(data)

    if(exists > 0){
        await knex.update('machine', {
            fields: data,
            conditions: [
                ['id', '=', data.id]
            ]
        })
        res.send({
            success: true,
            message: 'Successfully Updated',
        })
    } else {
        await knex.insert('machine', data)
        res.send({
            success: true,
            message: 'Successfully Added',
        })
    }
}

exports.start = async (req, res) => {
    let id = req.body.id
    machine.start(id)
    res.send({
        success: true,
        message: 'Successfully Started',
    })
}
exports.restart = async (req, res) => {
    let id = req.body.id
    machine.restart(id)
    res.send({
        success: true,
        message: 'Successfully Restarted',
    })
}
exports.stop = async (req, res) => {
    let id = req.body.id
    machine.stop(id)
    res.send({
        success: true,
        message: 'Successfully Stopped',
    })
}

exports.delete = async (req, res) => {

}
