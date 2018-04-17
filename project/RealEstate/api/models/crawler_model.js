const DB = require("../../config/DB");
const request = require("request");
var fs = require("fs");
var crypto = require('crypto');

class CrawlerModel extends DB {
    constructor() {
        super();
    }

    /**
     * Collect all data on site
     * @param {json} options op {LinkPage: "", TypePage: "", PatternURL: "", SiteID = 1, PageLimit = 50}
     * @param {function} callback callback return json: {status:"", message:"", total: 0, data:[]}
     */
    collect(options, callback) {
        var db = this;
        var count = 0;
        var countSuccess = 0;
        var json = {}; // json return
        json.status = "OK";
        json.message = "";
        json.total = 0;
        json.data = [];
        var numberOfPages = options.PageLimit;
        var linkPage = options.LinkPage;

        // Option cua get 1 trang co URL 
        var optionsGetPage = {
            Url: options.LinkPage,
            PatternURL: options.PatternURL,
            Page: 1,
            SiteID: options.SiteID
        };

        var isBreak = false;
        for (var page = 1; page <= numberOfPages; page++) {
            optionsGetPage.Page = page;
            optionsGetPage.Url = options.LinkPage + options.TypePage.toString().replace('{number}', page.toString()); // assign page number to json option
            console.log("\r\noptionsGetPage:========================================================" + page);            
            console.log(optionsGetPage);
            console.log("===========================================================================");                        
            getInfoOnPage(optionsGetPage, function (results) {
                // console.log(results);
                if (results.status == "OK") {
                    results.data.forEach(item => {
                        db.executeMySQL("INSERT INTO data(data_url, status, data_url_md5, site_id) VALUES (?)", [[item, 1, getMD5(item), optionsGetPage.SiteID]]).then(function (success) {
                            // callback(success);
                        }).catch(function (err) { });
                        countSuccess++;
                        json.data.push(item);
                    });
                }
                else
                {
                    json.message = results.message;
                    isBreak = true;
                }

                count++;
                if (count >= numberOfPages) {
                    json.total = countSuccess;
                    callback(json);
                }
            });

            if (isBreak) break;
        }
    }

    /**
     * Insert data URL into 'datas' table
     * @param data: Data is an array values ex: ['data_url', 'status', 'data_url_md5', 'site_id']
     * @param callback: callback true or false
     */
    addURL(data, callback) {
        this.executeMySQL("INSERT INTO data(data_url, status, data_url_md5, site_id) VALUES (?)", [data]).then(function (success) {
            callback(success);
        }).catch(function (err) {
            // console.log(err);
            callback(false);
        });
    }

}

/**
 * Get data at site (single page)
 * @param {json} options options are a json: {Url: "", PatternURL: "", Page: 1, SiteID = 1}
 * @param {function} callback callback return json: {status: "", message: "", data: []}
 */
function getInfoOnPage(options, callback) {
    var urlRequest = options.Url;
    var pageNumber = options.Page;
    var patternURL = options.PatternURL;
    var siteID = options.SiteID;
    var optionsRequest = {
        url: urlRequest,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5'
        }
    };

    request.get(optionsRequest, function (error, response, body) {
        var resultJSON = {};
        resultJSON.status = 'OK';
        resultJSON.message = "";
        resultJSON.data = [];
        resultJSON.SiteID = siteID;
        if (!error) {
            var pattern = new RegExp(patternURL, 'g');
            var results = [];
            var match = pattern.exec(body);
            if (match != null) {
                while (match != null) {
                    results.push(getURL(urlRequest) + match[1]);
                    match = pattern.exec(body);
                }
                resultJSON.status = 'OK';
                resultJSON.data = results;
            } else {
                resultJSON.status = "Error";
                resultJSON.message = "Pattern not match!";
            }
        } else {
            resultJSON.status = "Error";
            resultJSON.message = "Cannot request to " + options.url;
        }
        console.log("Request to page " + urlRequest + " - " + resultJSON.status + ": " + resultJSON.message);
        callback(resultJSON);
    });
}


function getURL(url) {
    var p = /(http[s]*:\/\/.*?)\//g;
    var m = p.exec(url + "/");
    return m[1];
}

function getMD5(input) {
    return crypto.createHash('md5').update(input).digest("hex");
}

// var test = new CrawlerModel();
// test.collect({
//     LinkPage: "https://batdongsan.com.vn/nha-dat-ban",
//     TypePage: "/p{number}",
//     PatternURL: "<div class=\'p-title\'>[\\w\\W]*?<a href=\'(.*?)\'[\\w\\W]*?<\\/a>",
//     PageLimit: 5
// }, function (rows) {
//     console.log(rows);
// });

module.exports = CrawlerModel;