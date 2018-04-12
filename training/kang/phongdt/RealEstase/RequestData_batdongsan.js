var request = require("request");
var fs = require("fs");
var textData = "";
var count = 0, totalPage = 2;
start = new Date();

for(var i = 1; i <= totalPage; i++){
	
	getInfoOnPage(i, function(status, data){
		if (status == "OK")
		{
			console.log(data);
			count++;
			if(count >= totalPage)
			{
				// fs.writeFileSync("Data_RealEstate.txt", textData);
				console.log("done!");
				finish = new Date();
				console.log("Operation took " + (finish.getTime() - start.getTime()) + " ms");
			}
			// console.log(textData);
		}
	});
	
}



function getInfoOnPage(number = 1, callback){
	
	var page = "";
	if (number > 1){
		page = "/p" + number;
	}
	var options = {
	  url: 'https://batdongsan.com.vn/nha-dat-ban' + page,
	  headers: {
		'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
		'Accept':'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
		'Accept-Language':'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5',
		'Cache-Control':'max-age=0',
		'Connection':'keep-alive'
	  }
	};

	request.get(options, function(error, response, body){	
		var pattern = /class='p-title'>[\s|<h3>]*<a href=[\w\W]*?">\s*(.*?)\s*<\/a>[\w\W]*?class="product-price">\s*(.*?)\s*<\/span>[\w\W]*?class="product-area">\s*(.*?)\s*<\/span>[\w\W]*?class="product-city-dist">\s*(.*?)\s*<\/span>[\w\W]*?class='floatright mar-right-10'>(.*?)<\/div>/g;
		var results = [];
		var match = pattern.exec(body);
		while(match != null){
			var jsonData = {
				"Title": match[1],
				"Price": match[2],
				"Area": match[3],
				"Location": match[4],
				"Date": match[5]
			};
			results.push(jsonData);
			match = pattern.exec(body);
		}
		console.log("Get data page " + number.toString());
		callback("OK", results);
	});
}