var express = require('express');
var router = express.Router();
var newsController = require("../modules/news");

/* GET home page. */
router.get('/', function(req, res, next) {
  newsController.getNews(function(ketqua){
    console.log(ketqua);
    res.render('index', { title: 'Express', newsposts: ketqua });

  });
});

//Add News
// router.post('/addNews', function(req, res, next) {
//   var item = {
//     title: req.body.title,
//     content: req.body.content
//   }
  
  
// });

module.exports = router;
