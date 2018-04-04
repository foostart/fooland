
'use strict';

// Khai báo pattern model 
const CrawlerModelClass = require("../models/crawler_model");
const crawlerModel = new CrawlerModelClass();

// export cac hàm có trong controller
module.exports = {
};

function getURLBySiteID(req, res, next){
    var results = {
        success: 1,
        data: [],
        description: "Get success"
    };
    var siteID = req.swagger.params["siteID"].value;
    var pageLimit = req.swagger.params["pageLimit"].value;
    if (!pageLimit) pageLimit = 50;
    
}

