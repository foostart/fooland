$(document).ready(function(){
    $('#selDistrict').on('change', function (e) {
        // alert(this.value);
        getWardsByDistrictID(this.value);
    });
});

function getWardsByDistrictID(id){
    $.post("/getWards", {DistrictID: id},function(data){
        $("#selWard").empty();
        $("#selWard").append('<option value="-1">--- Chọn Phường/Xã: ---</option>');
        data.forEach(item => {
            $("#selWard").append('<option value="'+ item.ID +'">'+ item.Name +'</option>');
        });
        
    })
}

