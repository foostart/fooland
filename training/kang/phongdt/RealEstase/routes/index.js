var express = require('express');
var router = express.Router();
var request = require('request');
const REModel = require("../models/realEstateModel");
const realEstateController = new REModel();
/* GET home page. */
router.get('/', function(req, res, next) {
  realEstateController.getProvinces(function(resultProvinces){
      realEstateController.getDistrictsByProciceID(1, function(resultDistricts)
      {
        console.log(resultProvinces);
        res.render('index', {arrayProvince: resultProvinces, arrayDistrict: resultDistricts});
      });
  });
});

router.post('/getWards', function(req, res, next) {
  var districtID = parseInt(req.body.DistrictID);
  realEstateController.getWardsByDistrictID(districtID, function(resultWards){
    res.send(resultWards);
  });
});

module.exports = router;
