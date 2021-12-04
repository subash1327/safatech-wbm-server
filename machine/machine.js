const knex = require('../knex')
const child_process = require('child_process');
const path = require('path');
const logger = require('./logger')
let machine = {data: {}, process: {}}

machine.init = async () => {
    let data = await knex.knex('machine').select('*')
    data.forEach(e => {
        machine.data[e.id] = e
    });
}

machine.update = (e) => {
    machine.data[e.id] = e
    socket.emit('machines', machine.data, machine.data[e.id].site_id)
}

machine.start = async (id) => {
    updateStatus(id, 'IDLE')
    startProcess(id)
    updateStatus(id, 'ACTIVE')
}

machine.stop = async (id) => {
    stopProcess(id)
}

function updateStatus(id, status){
    let data = machine.data[id]
    data['status'] = status
    data['last_update'] = new Date()
    socket.emit('machines', machine.data, data.site_id)
}

function startProcess(id){
    let data = machine.data[id]
    try {
        updateStatus(id, 'STOPPED')
        logger.log('libraries not installed', data)
        // let proc = child_process.spawn(`java`, ["-jar",`bin/runner` , data.ip, data.knet, data.port], {
        //     cwd:__dirname})
        // proc.stdout.addListener('data', (data) => {
        //     logger.log(data.toString(), data)
        // })
        // proc.stdout.addListener('error', (data) => {
        //     logger.log(data.toString(), data)
        // })
        // proc.stderr.addListener('data', (data) => {
        //     logger.log(data.toString(), data)
        // })
        // proc.stdout.addListener('end', () => {
        //     updateStatus(id, 'STOPPED')
        // })
        // machine.process[id] = proc;
    } catch (e) {
        
    }
    
}

function stopProcess(id){
    try {
        updateStatus(id, 'STOPPED')
        machine.process[id].kill('SIGINT')
    } catch (e) {
        
    }
    
}

module.exports = machine;


