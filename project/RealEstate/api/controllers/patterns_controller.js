
'use strict';

// Khai báo pattern model 
const PatternModelClass = require("../models/patterns_model");
const patternModel = new PatternModelClass();

// export cac hàm có trong controller
module.exports = {
    getAllPatterns: getAllPatterns,
    updatePatterns: updatePatterns
};

// Controller lấy hết tất cả patterns có trong database
function getAllPatterns(req, res, next) {
    var results = {
        success: 1,
        patterns: [],
        description: "OK"
    };

    patternModel.findAll(function (rows) {
        if (rows != -1) {
            rows.forEach(row => {
                var pattern = {
                    patternId: row.pattern_id,
                    patternCategoryId: row.pattern_category_id,
                    patternRegex: row.pattern_regex,
                    patternCategoryName: row.patt_category_name,
                    siteId: row.site_id
                };

                results.patterns.push(pattern);
            });
            res.json(results);
        } else {
            results.success = 0;
            results.description = "Error";
            res.json(results);
        }
    });
}

//Controller update pattern ==> chưa chạy dc
function updatePatterns(req, res, next)
{
    var results = {
        success: 1,
        data: [],
        description: "Update success"
    };
    var patternID = req.swagger.params.patternId.value;
    var patternCategoryID = req.swagger.params.patterCategoryId.value;
    var patternRegex = req.swagger.params.patternRegex.value;
    var siteID = req.swagger.params.siteId.value;

    if (patternCategoryID && patternRegex && siteID) {
        var datas = {
            PatternCategoryID: parseInt(patternCategoryID),
            PatternRegex: patternRegex,
            SiteID: parseInt(siteID)
        };

        patternModel.update(patternID, datas, function (success) {
            if (!success) {
                results.success = 0;
                results.description = "Cannot update data into database !";
                res.json(results);
            }
            res.json(results);
        });
    }
} 

//Controller delete pattern
function deletePattern(req, res, next)
{

}
