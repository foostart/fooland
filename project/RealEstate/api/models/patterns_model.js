const DB = require("../../config/DB");
const request = require("request");

class PatternsModel extends DB
{
    constructor(){
        super();
    }

    /**
     * Insert data into 'patterns' table
     * @param data: Data is an array values ex: ['pattern_category_id', 'pattern_regex', 'site_id']
     * @param callback: callback true or false
     */
    add(data, callback){
        this.executeMySQL("INSERT INTO patterns(pattern_category_id, pattern_regex, site_id) VALUES (?)", [data]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    /**
     * Delete data from 'patterns' table
     * @param patternId: Pattern ID to delete
     * @param callback: callback true or false
     */
    delete(patternId, callback){
        this.executeMySQL("DELETE FROM patterns WHERE pattern_id =? ", [patternId]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Update data at 'patterns' table
     * @param patternId: Pattern ID to update
     * @param data: data is an json array ex: {PatternCategoryID:1, PatternRegex: "", SiteID: 1}
     * @param callback: callback true or false
     */
    update(patternId, data, callback){
        var siteID = data.SiteID;
        var patternRegex = data.PatternRegex;
        var patternCategoryID = data.PatternCategoryID;
         this.executeMySQL("UPDATE patterns SET pattern_category_id = ?, pattern_regex = ?, site_id = ? WHERE patterns.pattern_id = ? ", [[patternCategoryID], [patternRegex], [siteID], [patternId]]).then(function(success){
            callback(success);
         }).catch(function(err){
             console.log(err);
             callback(false);
         })
    }

    /**
     * Find data at 'patterns' table
     * @param typeQuery : Type Query:
     *                      1: find by PatternID (default)
     *                      2: find by SiteID
     *                      3: find by PatternCategoryID
     *                      4: find by SiteID and PatternCategoryID
     * @param valueQuery: Value is an array of input value by type query, 
     *                    Example find pattern by type as '3': [[1],[2]]
     * @param callback: callback return pattern rows
     */
    find(typeQuery, valueQuery, callback){
        var querySQL = "pattern_id = ?"; // as default find by ID
        if (typeQuery == 2){
            querySQL = "site_id = ?"; // find by SiteID
        }else if (typeQuery == 3){
            querySQL = "pattern_category_id = ?";
        }else if (typeQuery == 4){
            querySQL = "site_id = ? AND pattern_category_id = ?"
        }
        var sql = "SELECT * FROM patterns INNER JOIN pattern_categories ON pattern_categories.patt_category_id=patterns.pattern_category_id WHERE " + querySQL;
        this.queryMySQL(sql, valueQuery).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

    /**
     * Find all data at 'patterns' table
     * @param callback: callback return all patterns
     */
    findAll(callback){
        this.queryMySQL("SELECT * FROM patterns INNER JOIN pattern_categories ON pattern_categories.patt_category_id=patterns.pattern_category_id").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }
	
	check(pattern_regex, url_request, callback){
        getHTML(url_request, function(html){
            if (html != ""){
                var pattern = new RegExp(pattern_regex, 'g');
                var match = pattern.exec(html);
                if (match != null)
                    callback(true);
                else
                    callback(false);
            }
        });
        
    }
}

function getHTML(urlRequest, callback){
    var optionsRequest = {
        url: urlRequest,
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
            'Accept-Language': 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5'
        }
    };

    request.get(optionsRequest, function (error, response, body) {
        if (!error){
            callback(body);
        }
        return callback("");
    });
}

module.exports = PatternsModel;