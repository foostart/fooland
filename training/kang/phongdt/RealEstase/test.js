

var request = require('request');
var fs = require('fs');
var options = {
    url: 'https://batdongsan.com.vn/nha-dat-ban-tp-hcm',
    headers: {
      'Accept' : 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
      'Accept-Language': 'en-US,en;q=0.9',
      'Connection' : 'keep-alive',
      'Host': 'batdongsan.com.vn',
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'
    }
  };

request.get(options, function(err, res, body){
    var html = body.toString();
    var pattern = /<div class='p-title'>[\s\t|<h3>]+<a href=.*?title=.*?>[\s]+(.*?)[\s]+<\/a>(.*?\s)*<span class="product-price">(.*)<\/span>/g;
    var ketqua = pattern.exec(html); 
    while(ketqua !== null)
    {
      console.log("Ten "+ketqua[1]);
      console.log("Gia "+ketqua[3]);
      ketqua = pattern.exec(html);
    }
  });



// request
//   .get('https://batdongsan.com.vn/nha-dat-ban-tp-hcm')
//   .on('body', function(response) {
//     console.log(response) // 200
//   });