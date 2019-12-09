var add = "";
$(document).ready(function () {
    $('.addtocart').click(function () {
        $.ajax({
            type: 'GET',
            url: 'http://localhost:8080/MilkTeaShop/AddToCart',

        })
    })


});

function addToCart(id) {


    // $(document).ready(function () {
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/AddToCart',
        type: 'GET',
        dataType: 'text',
        data: {id: id},
        success: function (abc) {

               alert(abc);

            var json = JSON.parse(abc);
            alert(json.name);
            add += " <li>\n" +
                "                                <table class=\"table table-striped\">\n" +
                "                                    <tr>\n" +
                "                                        <td class=\"text-center\"> <a href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=43\"><img src=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/02-85x85.jpg\" alt=\"Aliquam Quaerat\" title=\"Aliquam Quaerat\" class=\"img-thumbnail\" /></a> </td>\n" +
                "                                        <td class=\"text-left\"><a href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=43\">Aliquam Quaerat</a>             </td>\n" +
                "                                        <td class=\"text-right\">x 1</td>\n" +
                "                                        <td class=\"text-right\">$108.80</td>\n" +
                "                                        <td class=\"text-center\"><button type=\"button\" onclick=\"cart.remove('89');\" title=\"Remove\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-times\"></i></button></td>\n" +
                "                                    </tr>\n" +
                "                                </table>\n" +
                "                            </li>\n";


            $('.cart-menu li').html(add);

        },

    })
    // })

}

function doAddt() {

}