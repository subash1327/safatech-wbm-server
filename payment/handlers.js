const knex = require('../knex')
const jwt = require('jsonwebtoken')

exports.add = async (req, res) => {
    let data = req.body.payment
    data.site_id = req.user.site_id
    await knex.insert('payments', data)
        res.send({
            success: true,
            message: 'Successfully Added',
        })
}

