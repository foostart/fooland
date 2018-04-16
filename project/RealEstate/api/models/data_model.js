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
}


module.exports = DataModel;