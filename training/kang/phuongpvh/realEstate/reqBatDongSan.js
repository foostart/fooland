var request = require('request');

var fs = require('fs');
var textData = "";
var count = 0;
var totalPage = 10;
start = new Date();

for(var  i= 1; i <= totalPage; i++)
{
    getPage(i, function(status, data){
		if (status == "OK")
        {
            //console.log(data);
			textData += data;
			count++;
			if(count >= totalPage)
			{
				fs.writeFileSync("Data_RealEstate_TimMua.txt", textData);
                //console.log(textData);
                //console.log("done!");  
				finish = new Date();
				console.log("Operation took " + (finish.getTime() - start.getTime()) + " ms");
            }
            
		}
	});
}


function getPage(number = 1, callback)
{
    var page = "can-ban.html";
	
	if (number > 1){
		page = "can-ban/trang--" + number + ".html";
	}
	var options = {
	  url: 'http://timmuanhadat.com.vn/nha-dat-bat-dong-san/' + page,
	  headers: {
		'Host': 'timmuanhadat.com.vn',
        'Connection': 'keep-alive',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.9'
	  }
    };
    request.get(options, function(error, response, body){
        var patt = /class='vip-title'><a[\w\W]*?href='(.*?)'>(.*?)<\/a>[\w\W]*?Diện tích:<\/label>(.*?)[<sup>][\w\W]*?Giá:<\/label>\s*(.*?)\s*<\/div>[\w\W]*?'vip-dis'>(.*?)<\/div>[\w\W]*?'createdate'>(.*?)<\/div>/g;

        var text = "";
        var match = patt.exec(body);
        //console.log(body);
        while(match != null){
            var jsonData = {
                'Title': match[1] + " - " + match[2],
                'Area': match[3],
                'Price': match[4],
                'Location': match[5],
                'Create day': match[6]
            };

            text += JSON.stringify(jsonData) + "\n";//stringify: convert kiểu json sang tring
            match = patt.exec(body);
        }
        //console.log(text);
        console.log("Get data page: " + number.toString());
        callback("OK", text);
    });
}
