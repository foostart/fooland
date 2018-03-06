var mysql = require("mysql");
var conn = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "db_realestate"
});

module.exports.query = function(sql, callback){
    conn.query(sql, function(error, results){
        if (!error)
        {
            callback(results);
        }
    });
}

module.exports.execute = function(sql, callback){
    conn.query(sql, function(error, results){
        if (error) callback(false);
        else callback(true);
    })
}
