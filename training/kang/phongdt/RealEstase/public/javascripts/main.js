$(document).ready(function(){
    var isShowEdit = false;
    $('#selDistrict').on('change', function (e) {
        // alert(this.value);
        getWardsByDistrictID(this.value);
    });

    $('#btnSearch').click(function(){
        collectionData();
    });

    $('.btnDeletePattern').click(function(){
        var hrefContent=  $(this).attr("href");
        var pattern_id =  hrefContent.match(/(\d+)/g);
        console.log(pattern_id);
        $("#confirmModal #confirmModalTitle").html("Warning!!");
        $("#confirmModal #confirmModalContent").html("Do you want to delete pattern #" + pattern_id);
        $("#confirmModal #btnConfirm").click(function(e){
            deletePattern(pattern_id, function(success){
                $("#confirmModal #btnConfirm").attr('href', '#').attr('data-dismiss', 'modal');
                sessionStorage.reloadAfterPageLoad = true;
                location.reload();
            });
        });
    });

    $(".btnShowEdit").click(function(){
        var hrefContent=  $(this).attr("id");
        var pattern_id =  hrefContent.match(/(\d+)/g);
        var $textArea = $("#regex" + pattern_id);
        var $patternName = $("#patternName" + pattern_id);
        if (isShowEdit == false)
        {
            $patternName.find("strong").hide();
            $patternName.append('<input type="text" id="txtPatternName'+ pattern_id +'" class="form-control" value="'+ $patternName.find("strong").html() +'">');
            $(this).find("span").attr("class", "ion-archive");
            $(this).removeClass("btn-warning").addClass("btn-success");
            $textArea.removeAttr("readonly");
            $textArea.addClass("editTextArea");
            $textArea.focus();
            isShowEdit = true;
        }
        else{
            var newName = $patternName.find("input").val();
            var newPatternRegex = $textArea.val();
            editPatternRegex(pattern_id, newName, newPatternRegex);
            $patternName.find("strong").show();
            $patternName.find("strong").html(newName);
            $patternName.find("input").remove();
            $(this).find("span").attr("class", "ion-edit");
            $(this).removeClass("btn-success").addClass("btn-warning");
            $textArea.attr("readonly", true);
            $textArea.removeClass("editTextArea");
            isShowEdit = false;
        }
    })

});

function loadDataPatterns(){
    $.post("/patterns/", {},function(data){
        $table = $("#tablePatterns tbody");
        $table.empty();
    });
}

function deletePattern(pattern_id, callback){
    $.post("/patterns/delete", {patternId: parseInt(pattern_id)},function(data){
        callback(data);
    });
}

function collectionData(){
    var pages = $("#pages").val();
    var siteId = $("#selSite option:selected" ).val();
    $.post("/crawler/collectData", {pages: parseInt(pages), siteId: siteId},function(data){
        console.log(data);
    })
}

function getWardsByDistrictID(id){
    $.post("/getWards", {DistrictID: id},function(data){
        $("#selWard").empty();
        $("#selWard").append('<option value="-1">--- Chọn Phường/Xã: ---</option>');
        data.forEach(item => {
            $("#selWard").append('<option value="'+ item.ward_id +'">'+ item.ward_name +'</option>');
        });
    });
}

function editPatternRegex(pattern_id, pattern_name, pattern_regex){
    $.post("/patterns/edit", {id: parseInt(pattern_id), name: pattern_name, regex: pattern_regex}, function(data){
        console.log(data);
    })
}

