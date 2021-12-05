const knex = require('../knex')
const child_process = require('child_process');
const path = require('path');
const logger = require('./logger')
let machine = { data: {}, process: {} }

machine.init = async () => {
    try {
        let data = await knex.knex('machine').select('*')
        data.forEach(e => {
            machine.data[e.id] = e
        });
    } catch (error) {

    }

}

machine.update = (e) => {
    machine.data[e.id] = e
    socket.emit('machines', machine.data, machine.data[e.id].site_id)
}

machine.start = async (id) => {
    updateStatus(id, 'IDLE')
    let data = machine.data[id]
    socket.emit('start', data, data.site_id)
    updateStatus(id, 'ACTIVE')
}
machine.restart = async (id) => {
    let data = machine.data[id]
    socket.emit('restart', data, data.site_id)
}
machine.stop = async (id) => {
    updateStatus(id, 'STOPPED')
    let data = machine.data[id]
    socket.emit('stop', data, data.site_id)
}

function updateStatus(id, status) {
    let data = machine.data[id]
    data['status'] = status
    data['last_update'] = new Date()
    socket.emit('machines', machine.data, data.site_id)
}

module.exports = machine;


