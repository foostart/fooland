var db = require("../modules/db_test");

module.exports.getNews = function(callback){
    db.query("select * from news", function(results){
        callback(results);
    });
}

// module.exports.addNews = function(item,callback)
// {
//     db.excute("insert into news(title, content) values('" + item.title +"', '" + item.content +"')", function(ketqua){
//         callback(ketqua);
//     });//Dang tiep tuc
    
// }

// router.post('/addNews', function(req, res, next) {
//     var item = {
//       title: req.body.title,
//       content: req.body.content
//     }
//     newsController.addNews(function(ketqua){
//       console.log(ketqua);
//       res.render('index', { title: 'Express', newsposts: ketqua });
  
//     });
    
//   });