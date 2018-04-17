'use strict';
const request = require("request");

// Khai bao crawler model
const CrawlerModelClass = require("../models/crawler_model");
const crawlerModel = new CrawlerModelClass();
// Khai bao Site model
const SiteModelClass = require("../models/sites_model");
const siteModel = new SiteModelClass();
// Khai báo pattern model 
const PatternModelClass = require("../models/patterns_model");
const patternModel = new PatternModelClass();

// Khai báo data_model 
const DataClass = require("../models/data_model");
const dataModel = new DataClass();

// export cac hàm có trong controller
module.exports = {
    getURLBySiteID: getURLBySiteID,
    getDataDetailBySiteID: getDataDetailBySiteID
};




function getDataDetailBySiteID(req, res, next) {
    var results = {
        success: 1,
        collected: 0,
        description: "Get data detail success"
    };

    var siteID = req.swagger.params["siteID"].value;
    console.log(siteID);
    var urlLimit = req.swagger.params["urlLimit"].value;
    console.log(urlLimit);
    var countCollected = 0;
    if (urlLimit == null || urlLimit == "") {
        urlLimit = 10;
    }
    var status = 1; // 1: chua co URL trong database , 2: co day du du lieu roi
    patternModel.find(2, siteID, function (pattern_rows) { // lay ra pattern theo siteID
        if (pattern_rows != -1) {
            dataModel.findURLByStatus(status, siteID, function (url_rows) {
                console.log("\r\n url_rows: --------------------------------------------------------");
                console.log(url_rows);
                console.log("-------------------------------------------------------------------");
                if (url_rows != -1) {
                    if (urlLimit >= url_rows.length) {
                        urlLimit = url_rows.length;
                    }

                    for (var i = 0; i < urlLimit; i++) {
                        var url = url_rows[i]["data_url"];
                        var data_id = url_rows[i]["data_id"];
                        console.log(data_id, url);
                        getHTML(url, data_id, function (dataSource, dataID) {
                            if (dataSource != "") {
                                var dataInput = [];
                                var title = getValueByPattern("Title", pattern_rows, dataSource);
                                var price = getValueByPattern("Price", pattern_rows, dataSource);
                                var description = getValueByPattern("Description", pattern_rows, dataSource);
                                var area = getValueByPattern("Area", pattern_rows, dataSource);
                                var typeOfNews = getValueByPattern("Type Of News", pattern_rows, dataSource);
                                var typeBDS = getValueByPattern("Type BDS", pattern_rows, dataSource);
                                var location = getValueByPattern("Location", pattern_rows, dataSource);
                                var dateCreated = getValueByPattern("Date Created", pattern_rows, dataSource);
                                var projectName = getValueByPattern("Project Name", pattern_rows, dataSource);
                                var contactName = getValueByPattern("Contact Name", pattern_rows, dataSource);
                                var contactPhone = getValueByPattern("Contact Phone", pattern_rows, dataSource);
                                var contactEmail = getValueByPattern("Contact Email", pattern_rows, dataSource);
                                var contactAddress = getValueByPattern("Contact Address", pattern_rows, dataSource);
                                dataInput.push([title]);
                                dataInput.push([price.replace("m<sup>2</sup>", "m²")]);
                                dataInput.push([area.replace("m<sup>2</sup>", "m²")]);
                                dataInput.push([description]);
                                dataInput.push([typeOfNews]);
                                dataInput.push([typeBDS]);
                                dataInput.push([location]);
                                dataInput.push([convertStringToDate(dateCreated)]);
                                dataInput.push([projectName]);
                                dataInput.push([contactName]);
                                dataInput.push([contactPhone]);
                                dataInput.push([contactEmail]);
                                dataInput.push([contactAddress]);
                                dataInput.push([2]);
                                dataInput.push([dataID]);
                                console.log("\r\ndataInput ---------------------------------------------------");
                                console.log(dataInput);
                                console.log("\r\n---------------------------------------------------");
                                dataModel.update(dataInput, function (update_success) {
                                    console.log("Update: ", dataID, update_success);
                                    dataInput = [];
                                    countCollected++;
                                    if (countCollected >= urlLimit) {
                                        results.collected = countCollected;
                                        res.json(results);
                                    }
                                });
                            }
                            // console.log("------------------------------------------------------------------------------");
                        });
                    }

                } else {
                    results.success = 0;
                    results.description = "All urls were get data";
                    res.json(results);
                }
            });
        }
    });
}

function getURLBySiteID(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Get success"
    };
    var siteID = req.swagger.params["siteID"].value;
    var pageLimit = req.swagger.params["pageLimit"].value;
    if (!pageLimit) pageLimit = 50;

    var pattern_category_id = 1; // 1: lay ra pattern cua url 
    var countCollected = 0;

    patternModel.find(4, [[siteID], [pattern_category_id]], function (pattern_rows) { // find pattern URL with siteID and pattern_category_id
        console.log("\r\pattern_rows: ---------------------------------------------------------");
        console.log(pattern_rows);
        if (pattern_rows != -1) {
            siteModel.findById(siteID, function (site_rows) { // Find all site URL with siteID
                console.log("\r\nsite_rows: ---------------------------------------------------------");
                console.log(site_rows);

                if (site_rows != -1) {
                    var siteJson = JSON.parse(site_rows[0].site_url);
                    var categories = siteJson.site_url_categories; // array url of site
                    var totalColected = categories.length * pattern_rows.length;
                    console.log("\r\nsiteJson: ---------------------------------------------------------");
                    console.log(siteJson);
                    console.log("\r\ntotalColected: ---------------------------------------------------------");
                    console.log(totalColected);
                    console.log("\r\ncategories: ---------------------------------------------------------");
                    console.log(categories);
                    var isRunning = true;
                    for (var iSite = 0; iSite < categories.length; iSite++)// Loop for each URL of site
                    {
                        var category = categories[iSite];
                        pattern_rows.forEach(pattern => { // Loop for each pattern
                            // patternModel.check(pattern.pattern_regex, category.category_url, function (pattern_checked) {
                            //     if (pattern_checked) {
                            var jsOptions = {
                                LinkPage: category.category_url, // Duong dan cua trang can lay
                                TypePage: siteJson.type_page_url, // Kieu trang cua duong dan do
                                PatternURL: pattern.pattern_regex, // Pattern de lay ra URL cua tung bai viet
                                SiteID: siteID, // Truyen vao siteID de khi crawler xong add vao DB
                                PageLimit: parseInt(pageLimit) // gioi han trang lay ve

                            } // Khai bao du lieu option de truyen vao ham collect data 

                            crawlerModel.collect(jsOptions, function (data_crawler) {
                                if (data_crawler.status == "OK") {
                                    // console.log("\r\nData ----------------------");
                                    // console.log(data_crawler);
                                    if (data_crawler.data.length > 0) {
                                        data_crawler.data.forEach(item => {
                                            results.data.push(item);
                                        });
                                    } else {
                                        results.description = data_crawler.message; // assign error message 
                                        isRunning = false;
                                    }
                                }
                                countCollected++;

                                if (countCollected >= totalColected) {
                                    res.json(results);
                                }
                            });
                            //     }
                            // });
                        });

                        if (isRunning == false) {
                            break;
                        }
                    }
                } else {
                    results.success = 0;
                    results.description = "Cannot get site url by site ID";
                    res.json(results);
                }
            });

        } else {
            results.success = 0;
            results.description = "Cannot get pattern url by site ID";
            res.json(results);
        }
    });

}

function convertStringToDate(str) {
    var s;
    var result = "";
    var cDate = new Date();
    if (str.indexOf(".") != -1) {
        s = str.split('.');
        result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("/") != -1) {
        s = str.split('/');
        result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("-") != -1) {
        s = str.split('-');
        result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("Hôm qua") != -1) {
        result = cDate.getFullYear() + "-" + (cDate.getMonth() + 1).toString() + "-" + (cDate.getDate() - 1).toString();
    }
    else {
        result = cDate.getFullYear() + "-" + (cDate.getMonth() + 1).toString() + "-" + cDate.getDate();
    }
    return result;
}


function getHTML(urlRequest, data_id, callback) {
    var optionsRequest = {
        url: urlRequest,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5'
        }
    };

    request.get(optionsRequest, function (error, response, body) {
        if (!error) {
            callback(body, data_id);
        }
        return callback("", data_id);
    });
}

/**
 * 
 * @param {string} name : Pattern category name 
 * @param {array} arrayPattern : array of patterns
 * @param {string} sourceHTML : html to regex
 * @returns {string}: Return value
 */
function getValueByPattern(name, arrayPattern, sourceHTML) {
    var result = "";
    for (var index = 0; index < arrayPattern.length; index++) {
        var element = arrayPattern[index]["patt_category_name"].toString(); // get name_category of each element in array 

        if (element.indexOf(name) != - 1) { // if name is exist

            var patternRegex = arrayPattern[index]["pattern_regex"]; // get pattern_regex to exec
            var pattern = new RegExp(patternRegex, 'g');

            var match = pattern.exec(sourceHTML); // execute regex with HTML Source
            if (match != null) {
                result = match[1];
                break;
            }
        }
    }
    return result;
}
