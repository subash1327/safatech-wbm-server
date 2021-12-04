// const db = require('../db')
const knex = require('../knex')
const jwt = require('jsonwebtoken')

exports.add = async (req, res) => {
    let { id, name, login, hash, role, permissions} = req.body.user
    ///TODO: encrypt hash
    let data = {
        'id': id,
        'name': name,
        'login': login,
        'hash': hash,
        'role': role,
        'site_id': req.user.site_id,
        'permissions': JSON.stringify(permissions),
    }

    let exists = await knex.count('users', {
        conditions: [
            ['id', '=', data.id]
        ]
    });
    if(exists > 0){
        await knex.update('users', {
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
        await knex.insert('users', data)
        res.send({
            success: true,
            message: 'Successfully Added',
        })
    }
}

exports.login = async (req, res) => {
    try {
        let data = await knex.select('users', {
            conditions: [
                ['login', '=', req.body.login],
                ['hash', '=', req.body.hash]
            ]
        })
        if (data.length > 0) {
            const token = jwt.sign(data[0], env.env.JWT_KEY, { expiresIn: '3d' })
            res.send({
                'success': true,
                'message': 'Login Successfull',
                'token': token
            })
            return;
        } else {
            res.send({
                'success': false,
                'message': 'Login Failed'
            })
        }
    } catch (error) {
        console.log(error)
        res.send({
            'success': false,
            'message': `Login Failed: ${error}`
        })
    }
}

exports.key = async (req, res) => {
    try {
        let sites = await knex.select('sites', {
            conditions: [
                ['key', '=', req.body.key],
            ]
        })
        if (sites.length > 0) {
            let site = sites[0]
            let data = await knex.select('users', {
                conditions: [
                    ['site_id', '=', site.id],
                    ['role', '=', 'default'],
                ]
            })

            const token = jwt.sign(data[0], env.env.JWT_KEY, { expiresIn: '3d' })
            res.send({
                'success': true,
                'message': 'Login Successfull',
                'token': token
            })
            return;
        } else {
            res.send({
                'success': false,
                'message': 'Login Failed'
            })
        }
    } catch (error) {
        console.log(error)
        res.send({
            'success': false,
            'message': `Login Failed: ${error}`
        })
    }
}


exports.me = async (req, res) => {
    let data = await knex.select('users', {
        conditions: [
            ['id', '=', req.user.id],
        ]
    })
    if (data.length > 0) {
        res.send({
            'success': true,
            'message': 'Successfull',
            'data': data
        })
        return;
    } else {
        res.send({
            'success': false,
            'message': 'User not found'
        })
    }
}


