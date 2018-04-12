
'use strict';

// Khai bao crawler model
const CrawlerModelClass = require("../models/crawler_model");
const crawlerModel = new CrawlerModelClass();
// Khai bao Site model
const SiteModelClass = require("../models/sites_model");
const siteModel = new SiteModelClass();
// Khai báo pattern model 
const PatternModelClass = require("../models/patterns_model");
const patternModel = new PatternModelClass();

// export cac hàm có trong controller
module.exports = {
    getURLBySiteID: getURLBySiteID
};

function getURLBySiteID(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Get success"
    };
    var siteID = req.swagger.params["siteID"].value;
    var pageLimit = req.swagger.params["pageLimit"].value;
    if (!pageLimit) pageLimit = 50;

    var pattern_category_id = 1;
    var countCollected = 0;

    patternModel.find(4, [[siteID], [pattern_category_id]], function (pattern_rows) { // find pattern with siteID and pattern_category_id
        if (pattern_rows != -1) {
            siteModel.findById(siteID, function (site_rows) { // Find all site URL with siteID
                if (site_rows != -1) {
                    site_rows.forEach(site => {
                        var siteJson = JSON.parse(site.site_url);
                        var categories = siteJson.site_url_categories; // array url of site
                        console.log(pattern_rows);
                        var totalColected = categories.length * pattern_rows.length;
                        categories.forEach(category => { // Loop for each URL of site
                            pattern_rows.forEach(pattern => { // Loop for each pattern
                                patternModel.check(pattern.pattern_regex, category.category_url, function(pattern_checked){
                                    if (pattern_checked){
                                        var jsOptions = {
                                            LinkPage: category.category_url,
                                            TypePage: siteJson.type_page_url,
                                            PatternURL: pattern.pattern_regex,
                                            PageLimit: parseInt(pageLimit)
                                        }
                                        crawlerModel.collect(jsOptions, function (data_crawler) {
                                            if (data_crawler.status == "OK"){
                                                // console.log("Data ----------------------");
                                                // console.log(data_crawler);
                                                data_crawler.data.forEach(item =>{
                                                    results.data.push(item);
                                                });
                                            }
                                            countCollected++;
        
                                            if (countCollected >= totalColected){
                                                res.json(results);
                                            }
                                        });
                                    }
                                });
                            });
                        });
                    });
                } else {
                    results.success = 0
                    results.description = "Cannot get site url by site ID"
                    res.json(results);
                }
            });

        } else {
            results.success = 0
            results.description = "Cannot get pattern url by site ID"
            res.json(results);
        }
    });

}

