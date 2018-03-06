var express = require('express');
var router = express.Router();
var postController = require("../models/posts");

/* GET home page. */
router.get('/', function(req, res, next) {
  postController.getAllPosts(function(results){
    var name = "Express";
    if(results.length > 0)
    {
      name = results[0].name;
    }
    
    res.render('index', { title: name });
  });
  
});

module.exports = router;
