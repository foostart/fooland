var mysql = require('mysql');

var conn = mysql.createPool({
    host    : 'localhost',
    user    : 'root',
    password    : '',
    database    : 'demo'
});
 module.exports.query = function (sql,callback) {
     conn.query(sql,function (err,result) {
         if(!err)
         {
            callback(result);
         }
     });
 }