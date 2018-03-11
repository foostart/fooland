var express = require('express');
var router = express.Router();
var realEstateController = require("../models/realEstateModel");
var request = require('request');
/* GET home page. */
router.get('/', function(req, res, next) {
  realEstateController.getProvices(function(resultProvices){
      realEstateController.getDistrictsByProciceID(1, function(resultDistricts)
      {
        res.render('index', {arrayProvice: resultProvices, arrayDistrict: resultDistricts});
      });
  });
});

router.post('/getWards', function(req, res, next) {
  var districtID = parseInt(req.body.DistrictID);
  realEstateController.getWardsByDistrictID(districtID, function(resultWards){
    res.send(resultWards);
  });
});

router.get('/test', function(req, res, next) {
  request.get("https://batdongsan.com.vn/nha-dat-ban-tp-hcm", function(err, res, body){
  var html = body.toString();
  var pattern = /<a href=.*?title="(.*?)"/;
  var ketqua = pattern.exec(html); 
  while(ketqua!= null)
  {
    console.log(ketqua);
    ketqua = pattern.exec(html);
  }
});
});



module.exports = router;
