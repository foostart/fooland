const DB = require("../../config/DB");

class AuthModel extends DB
{
    constructor(){
        super();
    }

    /**
     * 
     * @param {*} token : token
     * @param {*} callback : callback return true or false
     */
   checkToken(token, callback){
        var sql = "SELECT * FROM users WHERE user_token = ?" ;
        var db = this;
        db.queryMySQL(sql, [[token]]).then(function(rows){
            //console.log(rows);
            if(rows != null && rows.length > 0)
            {
               callback(true);
            }else{
                callback(false);
            }
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
}

module.exports = AuthModel;