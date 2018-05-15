
'use strict';

// Define
const PatternModelClass = require("../models/patterns_model");
const patternModel = new PatternModelClass();
const authModelClass = require("../models/auth_model");
const AuthModel = new authModelClass();

// Export all functions for API
module.exports = {
    getAllPatterns: getAllPatterns,
    updatePatterns: updatePatterns,
    deletePatterns: deletePatterns,
    insertPattern: insertPattern,
    getPatternsByID: getPatternsByID,
    checkPattern: checkPattern
};


//check pattern 
function checkPattern(req, res, next) {
    var results = {
        success: 1,
        items: [],
        description: "OK"
    };
    var url = req.swagger.params['url'].value;
    var arrPattern = req.swagger.params['values'].value;

    patternModel.check(arrPattern, url, function (values) {
        if (values.length >= arrPattern.length) {
            results.success = 1;
            results.items = values;
        }
        else {
            results.success = 0;
            results.description = "Error";
        }
        res.json(results);
    });
}

// Get all pattern in database
function getAllPatterns(req, res, next) {
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        patterns: [],
        description: "OK"
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            patternModel.findAll(function (rows) {
                if (rows != -1) {
                    rows.forEach(row => {
                        var pattern = {
                            patternId: row.pattern_id,
                            patternCategoryId: row.pattern_category_id,
                            patternRegex: row.pattern_regex,
                            patternCategoryName: row.patt_category_name,
                            siteId: row.site_id
                        };

                        results.patterns.push(pattern);
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

//Controller update pattern
function updatePatterns(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Update success"
    };

    var Token = req.swagger.params['Token'].value;
    var patternID = req.swagger.params["patternID"].value;
    var patternCategoryID = req.swagger.params.payload.value.patternCategoryId;
    var patternRegex = req.swagger.params.payload.value.patternRegex;
    var siteID = req.swagger.params.payload.value.siteId;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            if (patternCategoryID && patternRegex && siteID) {
                var datas = {
                    PatternCategoryID: parseInt(patternCategoryID),
                    PatternRegex: patternRegex,
                    SiteID: parseInt(siteID)
                };

                patternModel.update(patternID, datas, function (success) {
                    console.log("Check: " + success);
                    if (!success) {
                        results.success = 0;
                        results.description = "Cannot update data into database !";
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

//DELETE /Patterns/{PatternID} operationId
function deletePatterns(req, res, next) {
    var relsutsJson = {
        success: 1,
        description: "Delete successful"
    };

    var Token = req.swagger.params['Token'].value;
    var patternID = req.swagger.params["patternID"].value;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            patternModel.delete(patternID, function (success) {
                if (!success) {
                    relsutsJson.success = 0,
                        relsutsJson.description = "Delete failed."
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

//Insert patterns
function insertPattern(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Insert success"
    };
    // var patternID = req.swagger.params["patternID"].value;
    var Token = req.swagger.params['Token'].value;
    var patternCategoryID = req.swagger.params.patternCategoryID.value.patternCategoryId;
    var patternRegex = req.swagger.params.patternCategoryID.value.patternRegex;
    var siteID = req.swagger.params.patternCategoryID.value.siteId;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            if (patternCategoryID && patternRegex && siteID) {
                var datas = [
                    parseInt(patternCategoryID),
                    patternRegex,
                    parseInt(siteID)
                ];

                patternModel.add(datas, function (success) {
                    console.log("Check: " + success);
                    if (!success) {
                        results.success = 0;
                        results.description = "Cannot insert data into database !";
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

// get pattern by patternID
function getPatternsByID(req, res, next) {
    var results = {
        success: 1,
        patterns: [],
        description: "OK"
    };

    var Token = req.swagger.params['Token'].value;
    var typeQuery = req.swagger.params.typeQuery.value;
    //console.log(typeQuery);
    var valueQuery = req.swagger.params.values.value;
    console.log(valueQuery);
    var values = [];
    for (var i = 0; i < valueQuery.length; i++) {
        values.push([parseInt(valueQuery[i])]);

    }
    // console.log(values);
    
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            patternModel.find(typeQuery, values, function (rows) {
                if (rows != -1) {
                    rows.forEach(row => {
                        var pattern = {
                            patternId: row.pattern_id,
                            patternCategoryId: row.pattern_category_id,
                            patternRegex: row.pattern_regex,
                            patternCategoryName: row.patt_category_name,
                            siteId: row.site_id
                        };

                        results.patterns.push(pattern);
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


