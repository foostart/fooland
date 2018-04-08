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
     * @param pattCategoryID: pattCategoryID to delete
     * @param callback: callback true or false
     */
    delete(pattCategoryID, callback){
        this.executeMySQL("DELETE FROM pattern_categories WHERE patt_category_id =? ", [pattCategoryID]).then(function(success){
            //console.log(pattCategoryID);
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

     /**
     * Find data at 'pattern_categories' table
     * @param pattCategoryID : pattCategoryID need to find
     * @param callback: callback return sites rows
     */
    findById(pattCategoryID, callback){
        this.queryMySQL("SELECT * FROM pattern_categories WHERE patt_category_id = ?", [pattCategoryID]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

    /**
     * Find all data at 'pattern_categories' table
     * @param callback: callback return all users
     */
    findAll(callback){
        this.queryMySQL("SELECT * FROM pattern_categories").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

        /**
     * Update data at 'pattern_categories' table
     * @param pattCategoryID: pattern_category_id to update
     * @param pattCategoryName: pattern_category_name need to update
     * @param callback: callback true or false
     */
    update(pattCategoryID, pattCategoryName, callback){
         this.executeMySQL("UPDATE pattern_categories SET patt_category_name = ? WHERE pattern_categories.patt_category_id = ? ", [[pattCategoryName], [pattCategoryID]]).then(function(success){
            callback(success);
         }).catch(function(err){
             console.log(err);
             callback(false);
         })
    }
}


module.exports = PatternCategoryModel;