const DB = require("../../config/DB");
const request = require("request");

class UserModel extends DB
{
    constructor(){
        super();
    }

    /**
     * Insert data into 'users' table
     * @param data: Data is an array values ex: ['user_name', 'user_password']
     * @param callback: callback true or false
     */
    add(data, callback){
        this.executeMySQL("INSERT INTO users(user_name, user_password) VALUES (?)", [data]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    /**
     * Delete data from 'users' table
     * @param userId: user ID to delete
     * @param callback: callback true or false
     */
    delete(userId, callback){
        this.executeMySQL("DELETE FROM users WHERE user_id =? ", [userId]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Update data at 'users' table
     * @param userId: user ID to update
     * @param data: data is an json array ex: {userName: "", userPass: ""}
     * @param callback: callback true or false
     */
    update(userId, data, callback){
        var userName = data.UserName;
        var userPass = data.UserPassword;
         this.executeMySQL("UPDATE users SET user_name = ?, user_password = ? WHERE users.user_id = ? ", [[userName], [userPass], [userId]]).then(function(success){
            callback(success);
         }).catch(function(err){
             console.log(err);
             callback(false);
         })
    }
    
    /**
     * Find data at 'users' table
     * @param userID : user need to find
     * @param callback: callback return user rows
     */
    findById(userID, callback){
        var sql = "SELECT * FROM users WHERE user_id = ?" ;
        this.queryMySQL(sql, [[userID]]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

    /**
     * Find all data at 'users' table
     * @param callback: callback return all users
     */
    findAll(callback){
        this.queryMySQL("SELECT * FROM users").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

    /**
     * 
     * @param {*} userID : user need to find
     * @param {*} callback : callback return token user
     */
   findToken(userID, callback){
        var sql = "SELECT user_token FROM users WHERE user_id = ?" ;
        this.queryMySQL(sql, [[userID]]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }
    
}


module.exports = UserModel;