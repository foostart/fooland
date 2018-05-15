// Define lib API
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

var sites, patterns;
getAllSite().then(function(data){
    sites = data;
});
getAllPattern().then(function(data){
    patterns = data;
}).then(function(){
    for (var i = 0; i < sites.length; i++) {
        var siteID = sites[i].site_id;
        var jsonSiteURL = JSON.parse(sites[i].site_url);
        var siteCategories = jsonSiteURL.site_url_categories;
        var patternsOfSite = getPatternBySiteID(patterns, siteID);
        getValueByPattern("Title", patternsOfSite, "");
        for (var j = 0; j < siteCategories.length; j++)
        {
            var urlSite = siteCategories[j].category_url;
            console.log(siteID, urlSite);
        }
    }
});

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
                result = match[1];
                break;
            }
        }
    }
    return result;
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
        patternModel.findAll(function(pattern_rows){
            resolve(pattern_rows);
        });
    });
}

function getAllSite() {
    return new Promise((resolve, reject) => {
        siteModel.findAll(function(site_rows){
            resolve(site_rows);
        });
    });
}