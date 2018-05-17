// Define lib API
var crypto = require('crypto'), zlib = require("zlib");
var fs = require("fs");
const request = require("request");
// Define crawler model
const CrawlerModelClass = require("../api/models/crawler_model");
const crawlerModel = new CrawlerModelClass();
// Define Site model
const SiteModelClass = require("../api/models/sites_model");
const siteModel = new SiteModelClass();
// Define pattern model 
const PatternModelClass = require("../api/models/patterns_model");
const patternModel = new PatternModelClass();
// Define data_model 
const DataClass = require("../api/models/data_model");
const dataModel = new DataClass();

var totalDataNeedToGet = 10000;
var insertEveryURL = 5; // Limit number to insert rows
var sites, patterns;

console.log("Starting to collect data ...");

getAllSite().then(function (data) {
    sites = data;
});
getAllPattern().then(function (data) {
    patterns = data;
}).then(function () {
    for (var i = 0; i < sites.length; i++) { // loop for each site
        var siteID = sites[i].site_id; // Get siteID
        console.log("Collect data from site: " + siteID.toString());
        var jsonSiteURL = JSON.parse(sites[i].site_url); // parse string to JSON
        var siteCategories = jsonSiteURL.site_url_categories; // Array Site categories
        var patternsOfSite = getPatternBySiteID(patterns, siteID); // Get all patterns by SiteID
        var patternURL = patternsOfSite[0].pattern_regex;
        var typePage = jsonSiteURL.type_page_url;
        for (var j = 0; j < siteCategories.length; j++) {
            var urlSite = siteCategories[j].category_url;
            console.log(urlSite);
            // console.log();
            // Define jsOptions variable with json type to contains the options that is a parameter of a [collect] function
            var pageLimit = Math.round(totalDataNeedToGet / sites.length / siteCategories.length / 20);
            if (pageLimit < 1) pageLimit = 1;
            var jsOptions = {
                LinkPage: urlSite, // The url of page
                TypePage: typePage, // The type of url. You can see it in [sites] table
                PatternURL: patternURL, // Pattern to get a URL of each page
                SiteID: siteID,
                PageLimit: parseInt(pageLimit),
                IsInsert: false
            }
            // console.log(jsOptions);

            // execute collect function
            crawlerModel.collect(jsOptions, function (data_crawler) {
                // console.log(data_crawler);
                if (data_crawler.status == "OK" && data_crawler.data.length > 0) {
                    var listUrls = data_crawler.data;
                    var countExisted = 0, countFinishedAllURL = 0;
                    var values = [];
                    for (var k = 0; k < listUrls.length; k++) {
                        checkURLExisted(listUrls[k], function (isExisted, urlRequest) {
                            if (isExisted == false) {
                                getHTML(urlRequest, function (data_details_HTML, urlSiteDetail) {
                                    // console.log("Request to: " + urlSiteDetail);
                                    if (data_details_HTML != "") {
                                        // Push all data to array
                                        var dataInput = pushDataToArray(siteID, urlSiteDetail, data_details_HTML, patternsOfSite);
                                        values.push(dataInput);
                                    }

                                    countFinishedAllURL++;

                                    // check countFinished
                                    if (values.length >= insertEveryURL || countFinishedAllURL >= listUrls.length) {
                                        insertDataToDB(values);
                                        values = [];
                                    }
                                });
                            } else {
                                countExisted++;
                                countFinishedAllURL++;
                            }

                            if (countExisted >= listUrls.length) {
                                console.log("All of site are existed !");
                                countExisted = 0;
                            }

                            if (countFinishedAllURL >= listUrls.length) {
                                insertDataToDB(values);
                                console.log("Finished site: " + urlRequest);
                            }
                        });
                    }
                }
            });
        }
        // break;
    }
});

function insertDataToDB(dataInput) {
    if (dataInput.length > 0) {
        dataModel.add(dataInput, function (add_success) {
            console.log(" --> Number of records inserted: " + add_success);
        });
    }
}

// Get data and put to array
function pushDataToArray(siteID, urlSiteDetail, data_details_HTML, patternsOfSite) {
    var dataInput = [];
    var title = getValueByPattern("Title", patternsOfSite, data_details_HTML);
    var price = getValueByPattern("Price", patternsOfSite, data_details_HTML);
    var description = getValueByPattern("Description", patternsOfSite, data_details_HTML);
    var area = getValueByPattern("Area", patternsOfSite, data_details_HTML);
    var typeOfNews = getValueByPattern("Type Of News", patternsOfSite, data_details_HTML);
    var typeBDS = getValueByPattern("Type BDS", patternsOfSite, data_details_HTML);
    var location = getValueByPattern("Location", patternsOfSite, data_details_HTML);
    var dateCreated = getValueByPattern("Date Created", patternsOfSite, data_details_HTML);
    var projectName = getValueByPattern("Project Name", patternsOfSite, data_details_HTML);
    var contactName = getValueByPattern("Contact Name", patternsOfSite, data_details_HTML);
    var contactPhone = getValueByPattern("Contact Phone", patternsOfSite, data_details_HTML);
    var contactEmail = getValueByPattern("Contact Email", patternsOfSite, data_details_HTML);
    // var b = new Buffer(contactEmail, 'base64');                                
    var contactAddress = getValueByPattern("Contact Address", patternsOfSite, data_details_HTML);
    area = area.replace("m<sup>2</sup>", "m²");
    dataInput.push(urlSiteDetail);
    dataInput.push(title);
    dataInput.push(price.replace("m<sup>2</sup>", "m²"));
    dataInput.push(area.replace("&nbsp;m&#178;", "m²"));
    dataInput.push(description.replace(/<br\/>/g, " "));
    dataInput.push(typeOfNews);
    dataInput.push(typeBDS);
    dataInput.push(location);
    dataInput.push(convertStringToDate(dateCreated));
    dataInput.push(projectName);
    dataInput.push(contactName);
    dataInput.push(contactPhone);
    dataInput.push(decodeEmail(contactEmail));
    dataInput.push(contactAddress);
    dataInput.push(2);
    dataInput.push(getMD5(urlSiteDetail));
    dataInput.push(siteID);
    return dataInput;
}

function checkURLExisted(url, callback) {
    dataModel.checkURLExisted(getMD5(url), function (isExisted) {
        callback(isExisted, url);
    });
}

function getMD5(input) {
    return crypto.createHash('md5').update(input).digest("hex");
}

function decodeEmail(input) {
    var result = "";
    var pattern = /\&#(\d+);/g
    var match = pattern.exec(input);
    while (match) {
        result += String.fromCharCode(parseInt(match[1]));
        match = pattern.exec(input);
    }
    if (result == "") {
        return input;
    }
    return result;
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


function getValueByPattern(name, arrayPattern, sourceHTML) {
    var result = "";
    // var status = 2;
    for (var index = 0; index < arrayPattern.length; index++) {
        var element = arrayPattern[index]["patt_category_name"].toString(); // get name_category of each element in array 
        if (element.indexOf(name) != - 1) { // if name is exist

            var patternRegex = arrayPattern[index]["pattern_regex"]; // get pattern_regex to exec
            var pattern = new RegExp(patternRegex, 'g');

            var match = pattern.exec(sourceHTML); // execute regex with HTML Source
            if (match != null) {
                if (match[1]) {
                    result = match[1];
                    break;
                }
            }
        }
    }
    return result;
}

function getHTML(urlRequest, callback) {
    var optionsRequest = {
        url: urlRequest,
        followAllRedirects: false,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5',
            'Accept-Encoding': 'gzip, deflate'
        }
    };
    requestWithEncoding(optionsRequest, function (err, data) {
        if (err) callback("", optionsRequest.url);
        else callback(data, optionsRequest.url);
    });
    // request.get(optionsRequest, function (error, response, body) {
    //     console.log(response.statusCode);
    //     if (!error) {
    //         callback(body, optionsRequest.url);
    //     }
    //     return callback("", optionsRequest.url);
    // });
}

function getHTMLWithDataID(urlRequest, data_id, callback) {
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


function getPatternBySiteID(patterns, siteID) {
    var results = [];
    patterns.forEach(pattern => {
        if (pattern.site_id == siteID) {
            results.push(pattern);
        }
    });
    return results;
}

function getAllPattern() {
    return new Promise((resolve, reject) => {
        patternModel.findAll(function (pattern_rows) {
            resolve(pattern_rows);
        });
    });
}

function getAllSite() {
    return new Promise((resolve, reject) => {
        siteModel.findAll(function (site_rows) {
            resolve(site_rows);
        });
    });
}

var requestWithEncoding = function (options, callback) {
    var req = request.get(options);

    req.on('response', function (res) {
        var chunks = [];
        res.on('data', function (chunk) {
            chunks.push(chunk);
        });

        res.on('end', function () {
            var buffer = Buffer.concat(chunks);
            var encoding = res.headers['content-encoding'];
            if (encoding == 'gzip') {
                zlib.gunzip(buffer, function (err, decoded) {
                    callback(err, decoded && decoded.toString());
                });
            } else if (encoding == 'deflate') {
                zlib.inflate(buffer, function (err, decoded) {
                    callback(err, decoded && decoded.toString());
                })
            } else {
                callback(null, buffer.toString());
            }
        });
    });

    req.on('error', function (err) {
        callback(err);
    });
}