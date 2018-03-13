var db_conn = require('../models/db_realEstate');

module.exports.getProvince = function(callback){
    db_conn.conn_query('select * from provice', function(results){
        callback(results);
    });
}

module.exports.getDistrictByProviceID = function(id, callback){
    db_conn.conn_query('select * from district where ProviceID=' + id + ' order by name', function(results){
        console.log(results);
        callback(results);
    });
}

module.exports.getWardsByDistrictID = function(id, callback){
    db_conn.conn_query('select * from ward where districtID=' + id + ' order by name', function(results){
        callback(results);
    });
}