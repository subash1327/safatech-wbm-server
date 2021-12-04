// const db = require('../db')
const knex = require('../knex')
const user = require('../user/handlers')

exports.add = async (req, res) => {
    let { id, name, key, expire, max_users, max_machines } = req.body.site

    let data = {
        'id': id,
        'name': name,
        'key': key,
        'expire': expire,
        'max_users': max_users,
        'max_machines': max_machines
    }

    let exists = await knex.count('sites', {
        conditions: [
            ['id', '=', data.id]
        ]
    });


    if(exists > 0){
        await knex.update('sites', {
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
        let last = await knex.count('users')

        await knex.insert('sites', data)
        let default_user = {
            'id': new Date().getTime().toString(),
            'name': 'Default',
            'login': `admin${last.length}`,
            'hash': 'admin',
            'role': 'default',
            'site_id': data.id,
            'permissions': ['machines', 'users', 'logs', 'payments', 'modify_machines', 'modify_users'],
        }

        user.add({'body': {'user': default_user}, 'user': {'site_id': data.id}}, {'send': (result) => {
            res.send({
                success: true,
                message: 'Successfully Added',
            })
        }})

    }
}


