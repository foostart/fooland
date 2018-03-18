var request = require('request');
var fs = require('fs');
var totalPage =3,count = 0;
var textData=""; 
for(i = 1; i <= totalPage; i++ )
{
	getPageNumber(i,function(status,data){
		if(status == 'OK'){
			textData += data;
			count++;
			if(count >= totalPage)
			{
				fs.open("muabannha.txt","w",function(err,fd){
					if(!err){
						fs.writeFileSync("muabannha.txt",textData);
						console.log("finish!!!");
					}
				})
			}
		}
	});
}
function getPageNumber(num = 1,callback){
	var page = "can-ban.html";
	var data = "";
	if(num > 1)
	{
		page = "can-ban/trang--2.html"
	}
	var option = {
		url: 'https://alonhadat.com.vn/nha-dat/'+page,
		headers:{
			'accept':'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
			'accept-language':'en-US,en;q=0.9',
			// 'Accept-Language':'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5',
			'cache-control':'max-age=0',
			'user-agent':'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'}
	};
	request.get(option, function(error, response, body){
		// console.log(body);
		//Lấy location [\w\W]*?title='[\w\W]*?'>(.*?)<\/a>[\w\W]*?'>(.*?)<\/a>[\w\W]*?'>(.*?)<\/a>[\w\W]*?'>(.*?)<\/a>
		var pattern = /class='ct_title'>\s*<a href='(.*?)'[\w\W]*?>(.*?)<\/a>[\w\W]*?Diện tích:<\/label>(.*?)<sup>[\w\W]*?Giá:<\/label>(.*?)[<\/div>|\/&nsp][\w\W]*?title='[\w\W]*?'>(.*?)<\/a>[\w\W]*?'>(.*?)<\/a>[\w\W]*?'>(.*?)<\/a>/g;
		
		var text = "";
		var match = pattern.exec(body);
		while(match !=null)
		{
			data += ('Title : ' + match[1]) + "\n";
			data += ('Area : ' + match[2]) + "\n";
			data += ('Price : ' + match[3]) + "\n";
			data += ('Location : ' + match[4] + "," + match[5] + "\n");
			// data +=('----------------------------------------------------') + "\n";
			match = pattern.exec(body);
		}
		console.log("Geting the page " + num);
		callback("OK",data);
	});
};
