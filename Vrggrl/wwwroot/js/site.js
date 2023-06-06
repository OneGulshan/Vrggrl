$('#PlaceHolderHere').on('hidden.bs.modal', function () {
    location.reload();
})

$(document).ready(function () {
    debugger;
    $('#menu').change(function () {        
        var id = $(this).val();
        GetCategory(id);
    });
});

$(function () {
    debugger;
    var PlaceHolderElement = $('#PlaceHolderHere');
    $('button[data-toggle="ajax-modal"]').click(function (event) {

        var url = $(this).data('url');
        $.get(url).done(function (data) {
            PlaceHolderElement.html(data);
            var menuId = PlaceHolderElement.find('.MenuId').val();
            var cat_id = PlaceHolderElement.find('.CategoryId').val();
            GetMenu(menuId);
            GetCategory(menuId, cat_id);

            PlaceHolderElement.find('.modal').modal('show');
        })
    })
})

function GetMenu(menuId) {
    debugger;
    $.ajax({
        url: "/Admin/GetManu_Name",
        success: function (result) {
            $('#menu').empty();
            $('#menu').append('<option value=' + 0 + ' >' + '--------Select Menu-------' + '</option >');
            $.each(result, function (i, data) {
                if (menuId == data.menuId) {
                    $('#menu').append('<option value=' + data.menuId + ' selected >' + data.menuName + '</option >');
                }
                else {
                    $('#menu').append('<option value=' + data.menuId + '>' + data.menuName + '</option >');
                }
            });
        }
    });
}

function GetCategory(menuId, cat_id) {
    debugger;
    $.ajax({
        url: '/Admin/Categoray?id=' + menuId,
        success: function (result) {
            $('#subid').empty();
            $('#subid').append('<option value=' + 0 + ' >' + '--------Select Category-------' + '</option >');
            $.each(result, function (i, data) {                
                if (cat_id == data.categoryId) {

                    $('#subid').append('<option value=' + data.categoryId + ' selected >' + data.categoryName + '</option >');
                }
                else {

                    $('#subid').append('<option value=' + data.categoryId + ' >' + data.categoryName + '</option >');
                }
            });
        }
    });
}
