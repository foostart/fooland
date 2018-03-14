const request = require("request");
var fs = require("fs");
class CollectionModel {
    constructor() {
    }

    /**
     * Collect all data on site
     * @param {json} options op {TotalPage: 1, Url: "", RegexPattern: ""}
     * @param {function} callback callback return json: {status:"", message:"", total: 0, data:[]}
     */
    CollectDataBDS(options, callback){
        var count = 0;
        var countSuccess = 0;
        var json = {};
        json.status = "OK";
        json.message = "";
        json.total = 0;
        json.data = [];
        var numberOfPages = options.TotalPage;
        var optionsGetPage = {
            Url: options.Url,
            RegexPattern: options.RegexPattern
        };
        for (var page = 1; page <= numberOfPages; page++)
        {
            optionsGetPage.Url = options.Url + "/p" + page.toString(); // assign page number to json option
            getInfoOnPage(optionsGetPage, function(results) {
                // console.log(results);
                if (results.status == "OK") {
                    results.data.forEach(item => {
                        json.data.push(item);
                    });
                    countSuccess++;
                }
                count++;
                if (count >= numberOfPages) {
                    json.total = countSuccess;
                    callback(json);
                }
            });
        }
    }
}
module.exports = CollectionModel;

/**
 * Get data at site (single page)
 * @param {json} options options are a json: {Url: "", RegexPattern: ""}
 * @param {function} callback callback return json: {status: "", message: "", data: []}
 */
function getInfoOnPage(options, callback){
    var urlRequest = options.Url;
    if (urlRequest == "") urlRequest = "https://batdongsan.com.vn/nha-dat-ban";

    var regexPattern = options.RegexPattern;
    if (regexPattern == "") regexPattern = 'class=\'p-title\'>[\\s|<h3>]*<a href=[\'"](.*?)[\'"][\\w\\W]*?>\\s*(.*?)\\s*<\\/a>[\\w\\W]*?class="product-price">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class="product-area">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class="product-city-dist">\\s*(.*?)\\s*<\\/span>[\\w\\W]*?class=\'floatright mar-right-10\'>(.*?)<\\/div>';

	var options = {
	  url: urlRequest,
	  headers: {
		'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
		'Accept':'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
		'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5'
	  }
	};

	request.get(options, function(error, response, body){
        var resultJSON = {};
        resultJSON.status = 'OK';
        resultJSON.message = "";
        resultJSON.data = [];

        if (!error)
        {
            var pattern = new RegExp(regexPattern, 'g');
            var results = [];
            var match = pattern.exec(body);
            if (match != null)
            {
                while(match != null){
                    var jsonData = {
                        "URL": getURL(urlRequest) + match[1],
                        "Title": match[2],
                        "Price": match[3],
                        "Area": match[4],
                        "Location": match[5],
                        "Date": match[6]
                    };
                    results.push(jsonData);
                    match = pattern.exec(body);
                }
                resultJSON.status = 'OK';
                resultJSON.data = results;
            }else{
                resultJSON.status = "Error";
                resultJSON.message = "Pattern not match!";
            }
        }else{
            resultJSON.status = "Error";
            resultJSON.message = "Cannot request to " + options.url;
        }
        console.log("Request to page " + urlRequest + " - " + resultJSON.status + ": " + resultJSON.message);
        callback(resultJSON);
	});
}

function getURL(url){
    var p = /(http[s]:\/\/.*?)[\/]/g;
    var m = p.exec(url + "/");
    return m[1];
}