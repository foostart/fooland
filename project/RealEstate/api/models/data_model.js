const DB = require("../../config/DB");

class DataModel extends DB {
    constructor() {
        super();
    }

    add(values, callback) {
        this.executeMySQLAndReturnRows("INSERT INTO data(data_url, data_title, data_price, data_area, data_description, data_type_of_news, data_type_BDS, data_location, data_date, data_project_name, data_contact_name, data_contact_phone, data_contact_email, data_contact_address, status, data_url_md5, site_id) VALUES ?", [values]).then(function(rowsEffected){
            callback(rowsEffected);
        }).catch(function (err) {
            // console.log(err);
            callback(false);
        });
    }

    checkURLExisted(urlMD5, callback) {
        this.queryMySQL("SELECT COUNT(*) as total FROM data WHERE data_url_md5 = ?", [[urlMD5]]).then(function(rows){
            if (parseInt(rows[0]["total"]) > 0)
                callback(true);
            else
                callback(false);
        }).catch(function (err) {
            // console.log(err);
            callback(false);
        });
    }

    /**
     * update data into 'data' table
     * @param {array} data: Data is an array values of data table
     * @param callback: callback true or false
     */
    update(data, callback) {
        this.executeMySQL("UPDATE data SET data_title=?,data_price=?,data_area=?,data_description=?,data_type_of_news=?,data_type_BDS=?,data_location=?,data_date=?,data_project_name=?,data_contact_name=?,data_contact_phone=?,data_contact_email=?,data_contact_address=?,status=? WHERE data_id=?", data).then(function (success) {
            callback(success);
        }).catch(function (err) {
            console.log(err);
            callback(false);
        })
    }

    /**
    * Find all url at data table by status
    * @param Status : status to find url
    * @param callback: callback return data rows
    */
    findURLByStatus(Status, SiteID, callback) {
        this.queryMySQL("SELECT data_id, data_url, site_id FROM data WHERE status = ? AND site_id = ?", [[Status], [SiteID]]).then(function (rows) {
            callback(rows);
        }).catch(function (err) {
            console.log(err);
            callback(-1);
        })
    }

    /**
     * 
     * @param typeQuery : Type query;
     *                      1. DataID
     *                      2. DataTitle
     *                      3. DataPrice
     *                      4. DataArea
     *                      5. DataTypeofNews
     *                      6. DataTypeOfBDS
     *                      7. DataLocation
     *                      8. DataContactName
     *                      9. DataContactPhone
     * 
     * @param valuesQuery : Value is an array of input value by type query
     * @param callback : callback return data rows
     */
    findBy(typeQuery, valuesQuery, callback) {
        var querySQL = "";

        switch (typeQuery) {
            case 1:
                querySQL = "data_id = ?"; 
                break;
            case 2:
                querySQL = "data_title LIKE ?";
                break;
            case 3:
                querySQL = "data_price LIKE ?";
                break;
            case 4:
                querySQL = "data_area LIKE ?"; 
                break;
            case 5:
                querySQL = "data_type_of_news LIKE ?";
                break;
            case 6:
                querySQL = "data_type_BDS LIKE ?";
                break;
            case 7:
                querySQL = "data_location LIKE ?";
                break;
            case 8:
                querySQL = "data_contact_name LIKE ?";
                break;
            case 9:
                querySQL = "data_contact_phone LIKE ?";
                break;

        }

        var sql = "SELECT * FROM data WHERE " + querySQL;
        this.queryMySQL(sql, valuesQuery).then(function (rows) {
            callback(rows);
        }).catch(function (err) {
            console.log(err);
            callback(-1);
        })

        // console.log("valuesQuery----------------------------------------------");
        // console.log(valuesQuery);
    }
}

module.exports = DataModel;