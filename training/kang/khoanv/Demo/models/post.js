var db  = require('../models/connectDB');

module.exports.getAllData = function (callback) {
    db.query("select * from demoexpress", function (results) {
        console.log(results);
        callback(results);
    })
}