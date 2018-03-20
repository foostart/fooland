var express = require('express');
var router = express.Router();
var request = require('request');
const REModel = require("../models/realEstateModel");
var realEstateController = new REModel();

router.get('/', function (req, res, next) {
    realEstateController.getPatterns(function (resultPatterns) {
        res.render('patterns', {
            arrayPattern: resultPatterns
        });
    });
});

router.post('/', function (req, res, next) {
    var html = "";
    realEstateController.getPatterns(function (resultPatterns) {
        resultPatterns.forEach(item => {
        });
        res.send(resultPatterns);
    });
});

router.post('/delete', function (req, res, next) {
    var resultJSON = {};
    resultJSON.status = "OK";
    resultJSON.message = "";
    var patternId = req.body.patternId;
    console.log("delete function: " + patternId);
    realEstateController.deletePatternById(patternId, function (success) {
        if (!success) {
            resultJSON.status = "Error";
            resultJSON.message = "Xóa thất bại !!!";
        }
        else {
            resultJSON.message = "Xóa thành công :D";
        }
        res.send(resultJSON);
        // console.log("delete function: " + resultJSON);
        // res.render('success');

    });
});

//API: POST /patterns/edit
router.post('/edit', function (req, res, next) {
    var resultJSON = {};
    resultJSON.status = "OK";
    resultJSON.message = "";
    var patternId = req.body.id;
    var patternRegex = req.body.regex;
    var patternName = req.body.name;
    if (patternId && patternRegex && patternName) {
        var jsonData = {
            PatternID: parseInt(patternId),
            PatternName: patternName,
            PatternRegex: patternRegex
        };
        console.log(jsonData);
        realEstateController.updatePatternByID(jsonData, function (success) {
            if (!success) {
                resultJSON.status = "Error";
                resultJSON.message = "Cannot update data into database !";
            }
            res.send(resultJSON);
        });
    }
    else {
        resultJSON.status = "Error";
        resultJSON.message = "Wrong parameters !!!";
        res.send(resultJSON);
    }
});

//API:POST /patterns/addnew
router.post('/addnew', function (req, res, next) {
    var resultJSON = {};
    resultJSON.status = "OK";
    resultJSON.message = "";
    var values = [];
    var patternName = req.body.patternName;
    var patternRegex = req.body.patternRegex;
    var patternRange = req.body.patternRange;
    var siteId = req.body.siteId;
    // console.log();
    values.push(patternName, patternRegex, patternRange, siteId);
    console.log(values);
    realEstateController.insertPattern(values, function (success) {
        if (!success) {
            resultJSON.status = "Error";
            resultJSON.message = "Cannot insert data into database !";
        }
        res.send(resultJSON);
    })

});
module.exports = router;