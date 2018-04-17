const DB = require("../../config/DB");

class DataModel extends DB
{
    constructor(){
        super();
    }

    /**
     * update data into 'data' table
     * @param {array} data: Data is an array values of data table
     * @param callback: callback true or false
     */
    update(data, callback){
        this.executeMySQL("UPDATE data SET data_title=?,data_price=?,data_area=?,data_description=?,data_type_of_news=?,data_type_BDS=?,data_location=?,data_date=?,data_project_name=?,data_contact_name=?,data_contact_phone=?,data_contact_email=?,data_contact_address=?,status=? WHERE data_id=?", data).then(function(success){
            callback(success);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }

     /**
     * Find all url at data table by status
     * @param Status : status to find url
     * @param callback: callback return data rows
     */
    findURLByStatus(Status, SiteID, callback){
        this.queryMySQL("SELECT data_id, data_url, site_id FROM data WHERE status = ? AND site_id = ?", [[Status], [SiteID]]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })
    }

    /**
     * 
     * @param typeQuery : Type query;
     *                      1. DataID
     *                      2. DataURL
     *                      3. DataTitle
     *                      4. DataPrice
     *                      5. DataArea
     *                      6. DataDescription
     *                      7. DataTypeofNews
     *                      8. DataTypeOfBDS
     *                      9. DataLocation
     *                      10. DataDate
     *                      11. DataProjectName
     *                      12. DataContactName
     *                      13. DataContactPhone
     *                      14. DataContactEmail
     *                      15. DataConttactAddress
     * 
     * @param valuesQuery : Value is an array of input value by type query,  
     *                      Example find pattern by type as '3': [[1],[2]]
     * @param callback : callback return data rows
     */
    findBy(typeQuery, valuesQuery, callback)
    {
        var querySQL = "";
        if (typeQuery == 1){
            querySQL = "data_id = ?";
        
        }else if (typeQuery == 3){
            querySQL = "LOWER(data_title) LIKE '%LOWER(?)%'";
        }else if (typeQuery == 4){
            querySQL = "LOWER(data_price) LIKE '%LOWER(?)%'"
        }else if (typeQuery == 5){
            querySQL = "LOWER(data_area) LIKE '%LOWER(?)%'"
        // }else if (typeQuery == 6){
        //     querySQL = "data_description = ?"
        }else if (typeQuery == 7){
            querySQL = "LOWER(data_type_of_news) LIKE '%LOWER(?)%'"
        }else if (typeQuery == 8){
            querySQL = "LOWER(data_type_of_BDS) LIKE '%LOWER(?)%'"
        }else if (typeQuery == 9){
            querySQL = "LOWER(data_location) LIKE '%LOWER(?)%'"
        // }else if (typeQuery == 10){
        //     querySQL = "data_date = ?"
        // }else if (typeQuery == 11){
        //     querySQL = "data_project_name = ?"
        }else if (typeQuery == 12){
            querySQL = "LOWER(data_contact_name) LIKE '%LOWER(?)%'"
        }else if (typeQuery == 13){
            querySQL = "LOWER(data_contact_phone) LIKE '%LOWER(?)%'"
        // }else if (typeQuery == 14){
        //     querySQL = "data_contact_email = ?"
        // }else if (typeQuery == 15){
        //     querySQL = "data_contact_address = ?"
         }
        var sql = "SELECT * FROM data WHERE " + querySQL;
        this.queryMySQL(sql, valuesQuery).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        })

        console.log("4 ==> " + valuesQuery);
    }
}


module.exports = DataModel;