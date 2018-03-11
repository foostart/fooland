var db = require("../models/dbConnect");

module.exports.getProvices = function(callback){
    db.query("select * from provice", function(results)
    {
        callback(results);  
    });
}

module.exports.getDistrictsByProciceID = function(id, callback){
    db.query("select * from district where ProviceID=" + id + " order by name", function(results)
    {
        callback(results);  
    });
}

module.exports.getWardsByDistrictID = function(id, callback){
    db.query("select * from ward where districtID=" + id + " order by name", function(results)
    {
        callback(results);  
    });
}