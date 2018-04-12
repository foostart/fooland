var express = require('express');
var router = express.Router();
var request = require('request');
const REModel = require("../models/realEstateModel");
const CollectionModel = require("../models/collectionModel");
var realEstateController = new REModel();
var collectionController = new CollectionModel();

/* GET home page. */
router.get('/', function (req, res, next) {
  realEstateController.getPatterns(function (resultPatterns) {
    realEstateController.getRealEstates(function (resultRealEstates) {
      realEstateController.getSites(function (resultSites) {
        res.render('index', {
          totalPatterns: resultPatterns.length,
          totalRealEstates: resultRealEstates.length,
          totalSites: resultSites.length
        });
      });
    });
  });
});

module.exports = router;
