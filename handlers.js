const knex = require('./knex')
// const db = require('./db')

exports.get = async (req, res) => {
    let { order_by, order, search_by, search, limit, offset } = req.query
    let table = req.params.name
    let query = knex.knex(table).select('*')
    let site_id = req.user.site_id
    if (search && search_by) {
        query = query.where(b => {
            b.where(search_by, 'like', `%${search}%`)
        })
    }
    if(site_id){
        query = query.where(b => {
            b.where('site_id', '=', `${site_id}`)
        })
    }
    if(order_by){
        query = query.orderBy(order_by, order)
    }
    let data = await query.limit(limit || 1000).offset(offset || 0)
    res.send({
        success: true,
        message: 'Successfully fetched',
        data: data
    })
}

exports.lang = (req, res) => {
    res.send({});
    // let code = req.params.code;
    // db.query(`SELECT  json_build_object(l.key, l.data::json#>'{${code}}') as data  FROM localizations as l;`, (error, result) => {
    //     if (!error) {
    //         let locales = {};
    //         result.rows.forEach((e) => {
    //             let k = Object.keys(e.data)[0];
    //             locales[k] = e.data[k]
    //         })
    //         res.send(locales)
    //     } else {
    //         console.log(error)
    //     }
    // })
}

exports.subscribe =  (req, res) => {
    const subscription = req.body
    console.log(subscription)
    notification.subscribe(subscription)
    res.status(201).json({});
    
  }


  exports.test_not =  (req, res) => {
    notification.send(JSON.stringify({
        title: 'Push notifications with Service Workers',
    }))
    res.send('sent')
  }