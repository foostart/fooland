var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/:id', function(req, res, next) {
 // res.send("respond with a resource");
  res.send('Hi ' + req.params.id + '. Welcome to my site');
  
});

module.exports = router;
