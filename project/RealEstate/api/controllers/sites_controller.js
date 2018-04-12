
'use strict';

// Khai báo pattern model 
const SiteModelClass = require("../models/sites_model");
const siteModel = new SiteModelClass();
const authModelClass = require("../models/auth_model");
const AuthModel = new authModelClass();

// export cac hàm có trong controller
module.exports = {
    getAllSites: getAllSite,
    insertSite: insertSite,
    updateSite: updateSite,
    deleteSite: deleteSite
};

// Controller lấy hết tất cả patterns có trong database
function getAllSite(req, res, next) {
    var Token = req.swagger.params['Token'].value;

    var results = {
        success: 1,
        sites: [],
        description: "OK"
    };

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            siteModel.findAll(function (rows) {
                if (rows != -1) {
                    rows.forEach(row => {
                        var site = {
                            siteId: row.site_id,
                            siteName: row.site_name,
                            siteURL: row.site_url
                        };

                        results.sites.push(site);
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

//Controller update site
function updateSite(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Update success"
    };

    var Token = req.swagger.params['Token'].value;
    var siteID = req.swagger.params["siteID"].value;
    var siteName = req.swagger.params.payload.value.siteName;
    var siteURL = req.swagger.params.payload.value.siteURL;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            if (siteName && siteURL) {
                var datas = {
                    SiteName: siteName,
                    SiteUrl: JSON.stringify(siteURL)
                };

                siteModel.update(siteID, datas, function (success) {
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
function deleteSite(req, res, next) {
    var relsutsJson = {
        success: 1,
        description: "Delete successful"
    };

    var Token = req.swagger.params['Token'].value;
    var siteID = req.swagger.params["siteID"].value;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            siteModel.delete(siteID, function (success) {
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
function insertSite(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Insert success"
    };

    var Token = req.swagger.params['Token'].value;
    var siteName = req.swagger.params.payload.value.siteName;
    var siteURL = req.swagger.params.payload.value.siteURL;

    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            if (siteName && siteURL) {
                var datas = [
                    siteName,
                    JSON.stringify(siteURL)
                ];

                siteModel.add(datas, function (success) {
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






