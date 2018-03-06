var db = require("../models/dbConnect");

module.exports.getAllPosts = function(callback){
    db.query("select * from posts", function(results)
    {
        console.log(results);
        callback(results);  
    });
}