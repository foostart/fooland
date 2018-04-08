
'use strict';

// Khai báo pattern model 
const userModelClass = require("../models/users_model");
const UserModel = new userModelClass();

// export cac hàm có trong controller
module.exports = {
    getUserByID: getUserByID,
    getAllUsers: getAllUsers,
    insertUser: insertUser,
    updateUser: updateUser,
    deleteUser: deleteUser,
    getTokenByUserID: getTokenByUserID
};

// Controller lấy user theo userID có trong database
function getUserByID(req, res, next) {
    var userID = req.swagger.params['userID'].value;

    var results = {
        success: 1,
        data: [],
        description: "Find user by userID successful."
    };
    
    UserModel.findById(userID,function (rows) {
        if (rows != -1) {
            rows.forEach(row => {
                var user = {
                    userID: row.user_id,
                    userName: row.user_name  
                };

                results.data.push(user);
            });
            res.json(results);
            } else {
                results.success = 0;
                results.description = "Error";
                res.json(results);
            }
        });
}

// Controller lấy hết tất cả user với user_id va user_name có trong database
function getAllUsers(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Find all users successful."
    };

    UserModel.findAll(function (rows) {
        if (rows != -1) {
            rows.forEach(row => {
                var user = {
                    userID: row.user_id,
                    userName: row.user_name  
                };
                results.data.push(user);
            });
            res.json(results);
        } else {
            results.success = 0;
            results.description = "Error";
            res.json(results);
        }
    });
}

//Insert new user into database
function insertUser(req, res, next)
{
    var userName = req.swagger.params.payload.value.userName;
    var userPassword = req.swagger.params.payload.value.userPassword;

    var results = {
        success: 1,
        data: [userName, userPassword],
        description: "Insert new user successful."
    };
    
    if (userName && userPassword) {
        var datas = [
            userName,
            userPassword
        ];

        UserModel.add(datas, function (success) {
            if (!success) {
                results.success = 0;
                results.description = "Cannot insert user into database !";
            }
            res.json(results);
        });
    }
} 

//Controller update user
function updateUser(req, res, next)
{
    var userID = req.swagger.params["userID"].value;
    var userName = req.swagger.params.payload.value.userName;
    var userPassword = req.swagger.params.payload.value.userPassword;
    
    var results = {
        success: 1,
        data: [userName, userPassword],
        description: "Update user into database successful."
    };
   
    
    //console.log("Password: ", userPassword);
    if (userName && userPassword) {
        var datas = {
            UserName: userName,
            UserPassword: userPassword
        };

        UserModel.update(userID, datas, function (success) {
            if (!success) {
                results.success = 0;
                results.description = "Cannot update user into database !";
            }
            //console.log(datas);
            res.json(results);
        });
    }
} 

//DELETE /Users/{UserID}: Xóa user với userID ra khỏi db
function deleteUser(req, res, next) {
    var relsutsJson = {
        success: 1,
        description: "Delete user from database successful."
    };

    var userID = req.swagger.params["userID"].value;
    
    UserModel.delete(userID, function(success){
        if(!success)
        {
            relsutsJson.success = 0,
            relsutsJson.description = "Delete user from database failed."
        }
        res.json(relsutsJson);
    });
}

//Lấy ra token của từng user theo userID
function getTokenByUserID(req, res, next)
{
    var results = {
        success: 1,
        data: [],
        description: "Get token user by user id successful."
    }

    var userID = req.swagger.params["userID"].value;
    UserModel.findToken(userID, function(rows){
        if (rows != -1) {
            rows.forEach(row => {
                var user = {
                    userID: row.user_id,
                    userName: row.user_name,
                    userToken: row.user_token 
                };

                results.data.push(user);
            });
            res.json(results);
        } else {
            results.success = 0;
            results.description = "Cannot get token user by user id.";
            res.json(results);
        }
    });
 }





