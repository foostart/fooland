const DB = require("../models/DB");

class RealEstateModel extends DB
{
    constructor(){
        super();
    }

    getProvinces(callback){
        this.queryMySQL("SELECT * FROM provinces").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        });
    }

    getDistrictsByProvinceID(provinceId, callback){
        this.queryMySQL("SELECT * FROM districts WHERE province_id=? ORDER BY district_name", [provinceId]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    getWardsByDistrictID(districtId, callback){
        this.queryMySQL("SELECT * FROM wards WHERE district_id=? ORDER BY ward_name", [districtId]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    getSites(callback){
        this.queryMySQL("SELECT * FROM sites").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        });
    }

    /**
     * Get Pattern by site_id
     * @param {int} siteId Site ID
     * @param {function} callback callback return rows data
     */
    getRegexPatternBySiteId(siteId, callback){
        this.queryMySQL("SELECT * FROM patterns, sites WHERE sites.site_id=patterns.site_id and sites.site_id=?", [siteId]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Get all patterns on database
     * @param {function} callback return rows data patterns
     */
    getPatterns(callback){
        this.queryMySQL("SELECT patterns.*, sites.site_name FROM patterns LEFT JOIN sites ON patterns.site_id=sites.site_id").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        });
    }

    deletePatternById(patternId,callback){
        this.executeMySQL("DELETE FROM patterns WHERE patterns.pattern_id =? ", [patternId]).then(function(success){
            callback(true);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Get all real-estate data on database
     * @param {function} callback return rows data real-estate
     */
    getRealEstates(callback){
        this.queryMySQL("SELECT * FROM real_estates").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        });
    }

    /**
     * Insert data into 'real_estate' table
     * @param data: Data is an array values ex: ['name', 'price', 'area', 'date', 'url', districtID]
     * @param callback: callback true or false
     */
    insertRealEstate(data, callback){
        this.executeMySQL("INSERT INTO real_estates(real_estate_name, real_estate_price, real_estate_area, real_estate_date, real_estate_url, district_id) VALUES ?", [data]).then(function(success){
            callback(true);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

    /**
     * Update Pattern
     * @param {json} data Data is an json array ex: {PatternID:1, PatternName: "", PatternRegex: ""}
     * @param {function} callback ...;
     */
    updatePatternByID(data, callback){
       var patternID = data.PatternID;
       var patternName = data.PatternName;
       var patternRegex = data.PatternRegex;
        this.executeMySQL("UPDATE patterns SET pattern_regex = ?, pattern_name = ? WHERE patterns.pattern_id = ? ", [[patternRegex], [patternName], [patternID]]).then(function(success){
            callback(true);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    };
}

module.exports = RealEstateModel;