const DB = require("../../config/DB");
const request = require("request");

class PatternCategoryModel extends DB
{
    constructor(){
        super();
    }

    /**
     * Insert data into 'pattern_categories' table
     * @param pattCategoryName: patt_category_name to insert
     * @param callback: callback true or false
     */
    add(pattCategoryName, callback){
        this.executeMySQL("INSERT INTO pattern_categories(patt_category_name) VALUES (?)", [pattCategoryName]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    /**
     * Delete data from 'pattern_categories' table
     * @param pattCategoryID: pattern_category_id to delete
     * @param callback: callback true or false
     */
    delete(pattCategoryID, callback){
        this.executeMySQL("DELETE FROM pattern_categories WHERE patt_category_id =? ", [pattCategoryID]).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
}


module.exports = PatternCategoryModel;