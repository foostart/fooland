
'use strict';

// Define
const userModelClass = require("../models/users_model");
const UserModel = new userModelClass();

const authModelClass = require("../models/auth_model");
const AuthModel = new authModelClass();

const crypto = require("crypto");

// Export all functions for API
module.exports = {
    getUserByID: getUserByID,
    getAllUsers: getAllUsers,
    insertUser: insertUser,
    updateUser: updateUser,
    deleteUser: deleteUser,
    getToken: getToken
};

// Get Users by UserID
function getUserByID(req, res, next) {
    var userID = req.swagger.params['userID'].value;
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        data: [],
        description: "Find user by userID successful."
    };
    AuthModel.checkToken(Token, function (isAuth) {
        console.log(isAuth);
        if (isAuth) {
            UserModel.findById(userID, function (rows) {
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
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

// get all users in database
function getAllUsers(req, res, next) {
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        data: [],
        description: "Find all users successful."
    };
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {

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
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

//Insert new user into database
function insertUser(req, res, next) {
    var userName = req.swagger.params.payload.value.userName;
    var userPassword = req.swagger.params.payload.value.userPassword;
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        data: [userName, getMD5(userPassword)],
        description: "Insert new user successful."
    };
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {

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
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

//Controller update user
function updateUser(req, res, next) {
    var userID = req.swagger.params["userID"].value;
    var userName = req.swagger.params.payload.value.userName;
    var userPassword = req.swagger.params.payload.value.userPassword;
    var Token = req.swagger.params['Token'].value;
    var results = {
        success: 1,
        data: [userName, userPassword],
        description: "Update user into database successful."
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            //console.log("Password: ", userPassword);
            if (userName && userPassword) {
                var datas = {
                    UserName: userName,
                    UserPassword: getMD5(userPassword)
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
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

//DELETE /Users/{UserID}: Delete user by userID
function deleteUser(req, res, next) {
    var Token = req.swagger.params['Token'].value;
    
    var relsutsJson = {
        success: 1,
        description: "Delete user from database successful."
    };

    var userID = req.swagger.params["userID"].value;
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            UserModel.delete(userID, function (success) {
                if (!success) {
                    relsutsJson.success = 0,
                        relsutsJson.description = "Delete user from database failed."
                }
                res.json(relsutsJson);
            });
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

// Get token of each user by UserID
function getToken(req, res, next) {
    var results = {
        success: 1,
        token: "",
        description: "Get token success."
    }

    var userName = req.swagger.params["payload"].value.userName;
    var userPassword = req.swagger.params["payload"].value.userPassword;
    console.log(userName);
    UserModel.findToken(userName, getMD5(userPassword), function (token) {
        console.log(token);
        if (token != -1) {
            results.token = token;
            res.json(results);
        } else {
            results.success = 0;
            results.description = "Cannot get token.";
            res.json(results);
        }
    });
}

// Hash MD5
function getMD5(input) {
    var md5sum = crypto.createHash('md5');
    md5sum.update(input);
    return md5sum.digest('hex');
}




