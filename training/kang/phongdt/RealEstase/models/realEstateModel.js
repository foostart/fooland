const DB = require("../models/DB");

class realEstateController extends DB
{
    constructor(){
        super();
    }

    getProvinces(callback){
        this.queryMySQL("select * from provinces").then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(-1);
        });
    }

    getDistrictsByProciceID(provinceId, callback){
        this.queryMySQL("select * from districts where province_id=? order by district_name", [provinceId]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
    
    getWardsByDistrictID(districtId, callback){
        this.queryMySQL("select * from wards where district_id=? order by ward_name", [districtId]).then(function(rows){
            callback(rows);
        }).catch(function(err){
            console.log(err);
            callback(false);
        })
    }
}

module.exports = realEstateController;