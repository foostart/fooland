$(document).ready(function(){
    $('#selDistrict').on('change', function (e) {
        // alert(this.value);
        getWardsByDistrictID(this.value);
    });

    $('#btnSearch').click(function(){
        collectionData();
    });
});

function collectionData(){
    var pages = $("#pages").val();
    var siteId = $("#selSite option:selected" ).val();
    $.post("/collectData", {pages: parseInt(pages), siteId: siteId},function(data){
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
    })
}

