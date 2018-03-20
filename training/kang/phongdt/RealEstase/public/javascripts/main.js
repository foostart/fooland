$(document).ready(function(){
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

