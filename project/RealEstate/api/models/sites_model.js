const DB = require("../../config/DB");

class SitesModel extends DB
{
    constructor(){
        super();
    }

    /**
     * Insert data into 'sites' table
     * @param data: Data is an array values ex: ['pattern_id', 'pattern_category_id', 'pattern_regex', 'site_id']
     * @param callback: callback true or false
     */
    add(data, callback){
        this.executeMySQL("INSERT INTO patterns(pattern_id, pattern_category_id, pattern_regex, site_id) VALUES (?)", [data]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    /**
     * Delete data from 'sites' table
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
     * Update data at 'sites' table
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
     * Find data at 'sites' table
     * @param siteID : site need to find
     * @param callback: callback return sites rows
     */
    findById(siteID, callback){
        var sql = "SELECT * FROM sites WHERE site_id = ?" ;
        this.queryMySQL(sql, [[siteID]]).then(function(rows){
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
}

module.exports = PatternsModel;