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
module.exports = router;