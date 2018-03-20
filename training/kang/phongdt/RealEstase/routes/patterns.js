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
    realEstateController.deletePatternById(patternId,function(success){
        if(!success)
        {
            resultJSON.status = "Error";
            resultJSON.message = "Xóa thất bại !!!";
        }
        else{
            resultJSON.message = "Xóa thành công :D";
        }
        res.send(resultJSON);
        // console.log("delete function: " + resultJSON);
        // res.render('success');
       
    });
});
module.exports = router;