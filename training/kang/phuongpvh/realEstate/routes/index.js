var express = require('express');
var router = express.Router();
var realEstateController = require("../models/connect_realEstate");

/* GET home page. */
router.get('/', function(req, res, next) {
  realEstateController.getProvince(function(provinces){
    realEstateController.getDistrictByProviceID(1, function(districts){
      res.render('index', {arrayProvince: provinces, arrayDistrict: districts});
    });
  });
});

router.post('/getWards', function(req, res, next) {
  //console.log(req.body);
  var districtID = parseInt(req.body.DistrictID);
  realEstateController.getWardsByDistrictID(districtID, function(resultWards){
    res.send(resultWards);
  });
});

module.exports = router;
