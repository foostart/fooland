const DB = require("../../config/DB");

class SitesModel extends DB
{
    constructor(){
        super();
    }

    /**
     * Insert data into 'sites' table
     * @param data: Data is an array values ex: ['site_name', 'site_url']
     * @param callback: callback true or false
     */
    add(data, callback){
        this.executeMySQL("INSERT INTO sites(site_name, site_url) VALUES (?)", [data]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    /**
     * Delete data from 'sites' table
     * @param siteID: Site ID to delete
     * @param callback: callback true or false
     */
    delete(siteID, callback){
        this.executeMySQL("DELETE FROM sites WHERE site_id =? ", [siteID]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Update data at 'sites' table
     * @param siteID: Site ID to update
     * @param data: data is an json array ex: {SiteName:"", SiteUrl: ""}
     * @param callback: callback true or false
     */
    update(siteID, data, callback){
        var siteName = data.SiteName;
        var siteUrl = data.SiteUrl;
         this.executeMySQL("UPDATE sites SET site_name = ?, site_url = ? WHERE sites.site_id = ? ", [[siteName], [siteUrl],[siteID]]).then(function(success){
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
     * Find all data at 'sites' table
     * @param callback: callback return all patterns
     */
    findAll(callback){
        this.queryMySQL("SELECT * FROM sites").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }
}

module.exports = SitesModel;