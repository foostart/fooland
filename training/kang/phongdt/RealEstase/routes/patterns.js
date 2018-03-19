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
router.get('/delete', function (req, res, next) {
    var resultJSON = {};
    resultJSON.status = "OK";
    resultJSON.message = "";
    var patternId = req.query.id;
    console.log(patternId);
    realEstateController.deletePatternById(patternId,function(success){
        if(!success)
        {
            resultJSON.status = "Error";
            resultJSON.message = "Cannot insert data into database !";
        }
        // res.send(resultJSON);
        res.render('success');
        // alert('Khoa');
    });
});
module.exports = router;