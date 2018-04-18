'use strict';

const DataModelClass = require("../models/data_model");
const dataModel = new DataModelClass();
const authModelClass = require("../models/auth_model");
const AuthModel = new authModelClass();

// export cac hàm có trong controller
module.exports = {
    getDataFindBy: getDataFindBy
};

function getDataFindBy(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "OK"
    };

    var Token = req.swagger.params['Token'].value;
    var typeQuery = req.swagger.params.typeQuery.value;

    console.log("\r\n typeQuery-----------------------------------------------------");
    console.log(typeQuery);

    var value_Query = req.swagger.params.valueQuery.value;
    console.log("\r\n value_Query-----------------------------------------------------");
    console.log(value_Query);

    var valuesArr = [];

    for (var i = 0; i < value_Query.length; i++) {
        switch (typeQuery) {
            case 2:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 3:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 4:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 5:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 6:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 7:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 8:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
            case 9:
                value_Query[i] = '%' + value_Query[i].toLowerCase() + '%';
                break;
        }
        valuesArr.push([value_Query[i]]);

    }
    AuthModel.checkToken(Token, function (isAuth) {
        if (isAuth) {
            dataModel.findBy(typeQuery, valuesArr, function (rows) {
                console.log("3 ==> " + valuesArr);

                if (rows != -1) {
                    rows.forEach(row => {
                        var data = {
                            dataID: row.data_id.toString(),
                            dataUrl: row.data_url,
                            dataTitle: row.data_title,
                            dataPrice: row.data_price.toString(),
                            dataArea: row.data_area,
                            dataDescription: row.data_description,
                            dataTypeOfNews: row.data_type_of_news,
                            dataTypeOfBDS: row.data_type_of_BDS,
                            dataLocation: row.data_location,
                            dataDate: row.data_date.toString(),
                            dataProjectName: row.data_project_name,
                            dataContactName: row.data_contact_name,
                            dataContactPhone: row.data_contact_phone.toString(),
                            dataContactEmail: row.data_contact_email,
                            dataContactAddress: row.data_contact_address,
                        };

                        //console.log("6==> " + data);
                        results.data.push(data);
                    });
                    console.log("\r\nresults-----------------------------------------------------");
                    console.log(results);
                    res.json(results);
                } else {
                    results.success = 0;
                    results.description = "Error";
                    res.json(results);
                }
            });
        } else {
            results.success = 0;
            results.description = "Token wrong !!!";
            res.json(results);
        }
    });

}