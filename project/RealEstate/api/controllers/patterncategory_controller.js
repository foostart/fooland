
'use strict';

// Define
const PatternCategoryModelClass = require("../models/patternCategory_model");
const PatternCategoryModel = new PatternCategoryModelClass();

const authModelClass = require("../models/auth_model");
const AuthModel = new authModelClass();

// export all functions for API
module.exports = {
    deletePatternCategory: deletePatternCategory,
    insertPatterCategory: insertPatterCategory,
    getPatternCategoryByID: getPatternCategoryByID,
    getAllPatternCategory: getAllPatternCategory,
    updatePatternCategory: updatePatternCategory
};

// Find pattern category by patterncategoryID
function getPatternCategoryByID(req, res, next) {
    var PatternCategoryID = req.swagger.params["pattCategoryID"].value;
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        data: [],
        description: "Find pattern category by patterncategoryID successful."
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            PatternCategoryModel.findById(PatternCategoryID, function (rows) {
                if (rows != -1) {
                    rows.forEach(row => {
                        var datas = {
                            PatternCategoryID: row.patt_category_id,
                            PatternCategoryName: row.patt_category_name
                        };

                        results.data.push(datas);
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

// Find all pattern category
function getAllPatternCategory(req, res, next) {
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        data: [],
        description: "Find all pattern category successful."
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            PatternCategoryModel.findAll(function (rows) {
                if (rows != -1) {
                    rows.forEach(row => {
                        var patt_category = {
                            patternCategoryID: row.patt_category_id,
                            userName: row.patt_category_name
                        };
                        results.data.push(patt_category);
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

//Insert new pattern category into database
function insertPatterCategory(req, res, next) {
    var Token = req.swagger.params['Token'].value;
    var PatternCategoryName = req.swagger.params.patterCategory.value.patthCategoryName;
    //console.log(PatternCategoryName);

    var results = {
        success: 1,
        data: [],
        description: "Insert new pattern category successful."
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            PatternCategoryModel.add(PatternCategoryName, function (success) {
                if (!success) {
                    results.success = 0;
                    results.description = "Cannot insert pattern category into database !";
                }
                res.json(results);
            });
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}

//DELETE /PatternCategory/{PatternCategoryID}: Delete pattern category from database
function deletePatternCategory(req, res, next) {
    var relsutsJson = {
        success: 1,
        description: "Delete pattern category from database successful."
    };

    var Token = req.swagger.params['Token'].value;
    var PatternCategoryID = req.swagger.params["pattCategoryID"].value;
    //console.log(req.swagger.params["pattCategoryID"].value);
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            PatternCategoryModel.delete(PatternCategoryID, function (success) {
                if (!success) {
                    relsutsJson.success = 0,
                        relsutsJson.description = "Delete pattern category from database failed."
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

//Controller update pattern category
function updatePatternCategory(req, res, next) {
    var Token = req.swagger.params['Token'].value;
    var patternCategoryID = req.swagger.params["pattCategoryID"].value;
    var patternCategoryName = req.swagger.params.payload.value.patternCategoryName;

    var results = {
        success: 1,
        data: [],
        description: "Update pattern category into database successful."
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            PatternCategoryModel.update(patternCategoryID, patternCategoryName, function (success) {
                if (!success) {
                    results.success = 0;
                    results.description = "Cannot update pattern category into database !";
                }
                res.json(results);
            });
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });
}





