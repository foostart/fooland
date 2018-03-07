var mysql = require("mysql");

var conn = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "vertrigo",
    database: "db_new"
});

var function_Query = function(sql, callback){
    conn.query(sql, function(err, ketqua){
        if(err) 
            callback(err);
        else 
            callback(ketqua);
    });
};

var excuteQuery = function(sql ,callback){
    conn.query(sql, function(err){
        if(err) 
            callback(false);
        else 
            callback(true);
    });
};

module.exports.query = function_Query;
module.exports.excute = excuteQuery;

