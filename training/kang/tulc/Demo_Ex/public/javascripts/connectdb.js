var mysql = require ('mysql');
var connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password :'' ,
    database : 'db_rex'
})

connection.connect();

connection.query('SELECT * from post', 
function(err, rows, fields){
    if(!err)
        console.log('The solution is: ', rows);
    else
        console.log('Error while performing Query.');
});

connection.end();