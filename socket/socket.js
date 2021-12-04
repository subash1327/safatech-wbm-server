var socket_io = require('socket.io');
var io = socket_io();
var socketApi = {};

socketApi.io = io;

let sites = {}
let users = {}

io.on('connection', socket => {
    console.log(`connected - ${socket.id}`)
    socket.emit('machines', machine.data)
    socket.on('disconnect', () => {
        console.warn(`disconnected - ${socket.id}`)
    });
    socket.on('subscribe', (data) => {
        console.log(`subscribed - ${data}`)
        if(data.isSite){
            sites[data.site] = socket
        }
        if(users[data.site]){
            users[data.site].push(socket)
        } else {
            users[data.site] = [socket]
        }
    });
});

socketApi.emit = (event, data, site) => {
    console.log(`emit: event: ${event}`)
    users[data.site].forEach(user => {
        user.emit(event, data)
    });
}

module.exports = socketApi;