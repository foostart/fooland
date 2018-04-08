
'use strict';

// Khai báo pattern model 
const PatternCategoryModelClass = require("../models/patternCategory_model");
const PatternCategoryModel = new PatternCategoryModelClass();

// export cac hàm có trong controller
module.exports = {
    deletePatternCategory: deletePatternCategory,
    insertPatterCategory: insertPatterCategory,
    getPatternCategoryByID: getPatternCategoryByID,
    getAllPatternCategory: getAllPatternCategory,
    updatePatternCategory: updatePatternCategory
};

// Lấy pattern category theo patterncategoryID có trong database
function getPatternCategoryByID(req, res, next) {
    var PatternCategoryID = req.swagger.params["pattCategoryID"].value;

    var results = {
        success: 1,
        data: [],
        description: "Find pattern category by patterncategoryID successful."
    };
    
    PatternCategoryModel.findById(PatternCategoryID,function (rows) {
        if (rows != -1) {
            rows.forEach(row => {
                var datas = {
                    PatternCategoryID: row.patt_category_id,
                    PatternCategoryName: row.patt_category_name  
                };

                results.data.push(datas);
            });
            res.json(results);
            } else {
                results.success = 0;
                results.description = "Error";
                res.json(results);
            }
        });
}

// Lấy hết tất cả pattern category với pattern_category_id va pattern_category_name có trong database
function getAllPatternCategory(req, res, next) {
    var results = {
        success: 1,
        data: [],
        description: "Find all pattern category successful."
    };

    PatternCategoryModel.findAll(function (rows) {
        if (rows != -1) {
            rows.forEach(row => {
                var patt_category = {
                    patternCategoryID: row.patt_category_id,
                    userName: row.patt_category_name  
                };
                results.data.push(patt_category);
            });
            res.json(results);
        } else {
            results.success = 0;
            results.description = "Error";
            res.json(results);
        }
    });
}


//Insert new pattern category into database
function insertPatterCategory(req, res, next)
{
    var PatternCategoryName = req.swagger.params.patterCategory.value.patthCategoryName;
    //console.log(PatternCategoryName);
    
    var results = {
        success: 1,
        data: [],
        description: "Insert new pattern category successful."
    };

    PatternCategoryModel.add(PatternCategoryName, function (success) {
        if (!success) {
            results.success = 0;
            results.description = "Cannot insert pattern category into database !";
        }
        res.json(results);
    });
} 


//DELETE /PatternCategory/{PatternCategoryID}: Xóa PatternCategory với PatternCategoryID ra khỏi db
function deletePatternCategory(req, res, next) {
    var relsutsJson = {
        success: 1,
        description: "Delete pattern category from database successful."
    };

    var PatternCategoryID = req.swagger.params["pattCategoryID"].value;
    //console.log(req.swagger.params["pattCategoryID"].value);
    PatternCategoryModel.delete(PatternCategoryID, function(success){
        if(!success)
        {
            relsutsJson.success = 0,
            relsutsJson.description = "Delete pattern category from database failed."
        }
        res.json(relsutsJson);
    });
}


//Controller update pattern category
function updatePatternCategory(req, res, next)
{
    var patternCategoryID = req.swagger.params["pattCategoryID"].value;
    var patternCategoryName = req.swagger.params.payload.value.patternCategoryName;
    
    var results = {
        success: 1,
        data: [],
        description: "Update pattern category into database successful."
    };

    PatternCategoryModel.update(patternCategoryID, patternCategoryName, function (success) {
        if (!success) {
            results.success = 0;
            results.description = "Cannot update pattern category into database !";
        }
        res.json(results);
    });
} 





