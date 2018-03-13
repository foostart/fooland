var mysql = require('mysql');

var conn = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "vertrigo",
    database: "db_realestate"
});

module.exports.conn_query = function(sql, callback){
    conn.query(sql, function(err, result){
        console.log("Connect successful...");
        if(err)
        {
            callback(err);
        } else
            callback(result);
    });
};

module.exports.conn_excute = function(sql, callback){
    conn.query(sql, function(err){
        if(err)
        {
            callback(true);
        } else
            callback(false);
    });
};


//module.exports.conn_excute = excute_sql;