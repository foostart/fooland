var request = require("request");
var fs = require("fs");
var textData = "";
var count = 0, totalPage = 5;
start = new Date();

for(var i = 1; i <= totalPage; i++){
	
	getPage(i, function(status, data){
		// console.log(data);
		if (status == "OK")
		{
			textData += data;
			count++;
			if(count >= totalPage)
			{
				fs.writeFileSync("Data_NhaDatViet247.txt", textData);
				//console.log(textData);
				console.log("done!");
				finish = new Date();
				console.log("Operation took " + (finish.getTime() - start.getTime()) + " ms");
			}
			
		}
	});
	
}



function getPage(number = 1, callback){
	
	var page = "can-ban.html";
	if (number > 1){
		page = "can-ban/trang--"  + number +".html";
	}
	var options = {
	  url: 'http://nhadatviet247.net/rao-vat/' + page,
	  headers: {
		'Host': 'nhadatviet247.net',
		'Connection': 'keep-alive',
		'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
		'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
		'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5'

	  }
	};

	request.get(options, function(error, response, body){	
		var pattern = /class='vip-title'><a href='(.*?)'>(.*?)<\/a>[\w\W]*?<\/label>(.*?)<sup>[\w\W]*?price'>(.*?)<\/div>[\w\W]*?<\/label>(.*?)<\/div>[\w\W]*?Ngày đăng: <\/label>(.*?)<\/div>/g;
		
		var txt = "";
		var match = pattern.exec(body);
		//console.log(body);
		while(match != null){
			var jsonData = {
				"Url" : 'http://nhadatviet247.net'+match[1],
				"Title": match[2],
				"Price": match[3],
				"Area": match[4],
				"Location": match[5],
				"Day": match[6]
			};
			txt += JSON.stringify(jsonData) + "\n";
			match = pattern.exec(body);
		}
		console.log("Get data page " + number.toString());
		// console.log(txt);
		callback("OK", txt);
	});
}