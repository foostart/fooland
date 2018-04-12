var express = require('express');
var router = express.Router();
var request = require('request');
const REModel = require("../models/realEstateModel");
const CollectionModel = require("../models/collectionModel");
var realEstateController = new REModel();
var collectionController = new CollectionModel();

router.get('/', function (req, res, next) {
    realEstateController.getSites(function (resultSites) {
        res.render('crawler', {
            arraySite: resultSites
          });
    });
});

router.post('/collectData', function (req, res, next) {
    var siteId = req.body.siteId;
    var numberOfPages = req.body.pages; // Get param of request (pages)
    realEstateController.getRegexPatternBySiteId(siteId, function (rows_pattern) {
      var url = "";
  
      var regexPattern = "";
      if (rows_pattern.length > 0) {
        url = rows_pattern[0].site_url;
        regexPattern = rows_pattern[0].pattern_regex;
      }
  
      var options = {
        TotalPage: numberOfPages,
        Url: url,
        LinkPage: rows_pattern[0].site_link_page,
        RegexPattern: regexPattern,
        PatternRange: rows_pattern[0].pattern_range
      };
  
      collectionController.CollectDataBDS(options, function (results) {
        var resultJSON = {};
        resultJSON.status = "OK";
        resultJSON.message = "";
        if (results.status == "OK") {
          // console.log(results);
          var values = [];
          var arrayData = results.data;
          // parse data was collected to array
          arrayData.forEach(item => {
            // console.log(item.URL);
            if (item.Date.indexOf('Hôm nay') != -1) {
              var cDate = new Date();
              item.Date = cDate.getDate() + "/" + (cDate.getMonth() + 1).toString() + "/" + cDate.getFullYear();
            }
            values.push([item.Title, item.Price, item.Area, convertStringToDate(item.Date), item.URL, 1]);
          });
          // insert data into database (estate table)
          realEstateController.insertRealEstate(values, function (success) {
            if (!success) {
              resultJSON.status = "Error";
              resultJSON.message = "Cannot insert data into database !";
            }
            res.send(resultJSON);
          });
        }
        else {
          resultJSON.status = "Error";
          resultJSON.message = results.message;
          res.send(resultJSON);
        }
      });
    });
  });
  
/**
 * Convert date string to right format mysql
 * @param {string} str: date string input
 */
function convertStringToDate(str) {
    var s;
    var result = "";
    var cDate = new Date();
    if(str.indexOf(".") != -1){
      s = str.split('.');
      result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("/") != -1){
      s = str.split('/');
      result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("-") != -1){
      s = str.split('-');
      result = s[2] + "-" + s[1] + "-" + s[0];
    }
    else if (str.indexOf("Hôm qua") != -1){
      result = cDate.getFullYear() + "-" + (cDate.getMonth() + 1).toString() + "-" +  (cDate.getDate() - 1).toString();
    }
    else{
      result = cDate.getFullYear() + "-" + (cDate.getMonth() + 1).toString() + "-" +  cDate.getDate();
    }
    return result;
  }

module.exports = router;