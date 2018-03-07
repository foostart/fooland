var mysql = require('mysql');

var conn = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    password    : '',
    database    : 'demo'
});

conn.connect(function (err) {
    if (err) throw err.stack;
    console.log("Ket noi database thanh cong");
})
var sql = "SELECT * FROM demoexpress";
conn.query(sql, function(error, result){
    if (error) throw error;
    console.log("– KET QUA — " , result);
    // res.json(result); // Trả kết quả về cho client dưới dạng json
    });

conn.end(function (err) {
    if(err) throw err.stack;
    console.log("Dong ket noi thanh cong");
})