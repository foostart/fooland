var express = require('express');
var router = express.Router();
var postController = require("../models/post")
/* GET home page. */
router.get('/', function(req, res, next) {
  postController.getAllData(function (results) {
    res.render('index', { title: 'Express', ketqua: results });
  })
  
});

module.exports = router;
