$(document).ready(function () {
$('.addtocart').click(function () {
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8080/MilkTeaShop/AddToCart',

    })
})


});
function addToCart(id) {

    $(document).ready(function () {
        $.ajax({
            url:'http://localhost:8080/MilkTeaShop/AddToCart',
            type:'GET',
            dataType: 'text',
            data: {id : id},
            success: function (abc) {
                              alert(abc);


            },
            complete: function (data) {
                alert(data.responseText);
            }
        })
    })

}