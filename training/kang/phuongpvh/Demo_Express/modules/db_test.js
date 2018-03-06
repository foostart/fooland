var mysql = require("mysql");
var express = require("express");

var app = express();

var conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'vertrigo',
    database: 'db_new'
});

conn.connect(function(err){
    if(err) {
        console.log("Error connect database");
        return err;
    } else {
        console.log("\nConnecting successfull !!!");
    }
});

app.get('/db', function(request, response){
    conn.query('SELECT * FROM news', function(err, rows){
        
        if(!err)
        {
            console.log("\nThe solution is: ", rows);
        } else {
            console.log("\nError connecting database....");
        }
    });
});

conn.end();


