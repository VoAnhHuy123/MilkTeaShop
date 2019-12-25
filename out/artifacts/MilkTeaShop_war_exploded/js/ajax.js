
function addToCartSmall(id) {
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/AddToCartSmall',
        type: 'GET',
        dataType: 'text',
        data: {id: id},
        responseType: "text",
        contentType: "application/json; charset=utf-8",
        success: function (abc) {
            var json = JSON.parse(abc);
            updateQuickCart(json);
        }

    })


}

function deleteFromCart(id) {
   $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/DeleteFromCart',
        type: "GET",
        dataType: 'text',
        // cache: true,
        // async:false,

        data: {id: id},
        success: function (abc1) {
            if (abc1!=null) {
                var user = JSON.parse(abc1);
                console.log(id);
                updateQuickCart(user);
            }else {

            }

            },

    })
    // end.abort();

}
function updateQuickCart(user) {

    var listItem = user.shoppingCart.listItem;
    var result = "<li>\n";
    var total = 0;
    var count = 0;
    var i;

    if (listItem.length==0){
        result+=
            "      <p class=\"text-center\">Your shopping cart is empty!</p>\n" +
            "    </li>"
    }else {


        for (i = 0; i < listItem.length; i++) {

            total += listItem[i].price;
            count += listItem[i].quantity;
            result +=
                "                                    <table class=\"table table-striped\">\n" +

                "                                        <tr>\n" +
                "                                            <td class=\"text-center\"><a\n" +
                "                                                    href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=47\"><img\n" +
                "                                                    style=\"height: 70px; width: 70px\"\n" +
                "                                                    src=\"" + listItem[i].image + "\"\n" +
                "                                                    alt=\"Accusantium Doloremque\" title=\"Accusantium Doloremque\"\n" +
                "                                                    class=\"img-thumbnail\"/></a></td>\n" +
                "                                            <td class=\"text-left\"><a style=\"font-size: 12px; font-weight: 600;\"\n" +
                "                                                    href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=47\">\n" +
                listItem[i].name + " (" + listItem[i].size + ")" +
                "                                            </a> <br/>\n";
            if (listItem[i].toppingList != null) {
                var j;
                for (j = 0; j < listItem[i].toppingList.length; j++) {
                    result += " <small style=\"font-size: 10px\">" + listItem[i].toppingList[j].name + "</small> <br>"

                }
            }
            result += " </td>\n" +
                "                                            <td class=\"text-right\" style=\"font-size: 12px;\">x " + listItem[i].quantity + "</td>\n" +
                "                                            <td class=\"text-right\" style=\"font-size: 12px;\">" + listItem[i].price + "\n" +
                "                                            </td>\n" +
                "                                            <td class=\"text-center\">\n" +
                "                                                <button type=\"button\" onclick=\"deleteFromCart(" + listItem[i].id + ")\" title=\"Remove\"\n" +
                "                                                        class=\"btn btn-danger btn-xs\"><i class=\"fa fa-times\"></i>\n" +
                "                                                </button>\n" +
                "                                            </td>\n" +
                "                                        </tr>\n" +
                "                                    </table\n>"


        }
        result += "</li>"

        result += " <li>\n" +
            "                                    <div>\n" +
            "                                        <table class=\"table table-bordered\">\n" +
            "                                            <tr>\n" +
            "                                                <td class=\"text-right\"><strong>Sub-Total</strong></td>\n" +
            "                                                <td class=\"text-right\">$585.00</td>\n" +
            "                                            </tr>\n" +
            "                                            <tr>\n" +
            "                                                <td class=\"text-right\"><strong>Total</strong></td>\n" +
            "                                                <td class=\"text-right\">" + total + "</td>\n" +
            "                                            </tr>\n" +
            "                                        </table>\n" +
            "                                        <p class=\"text-right button-container\"><a\n" +
            "                                                href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/cart\"\n" +
            "                                                class=\"addtocart btn btn-primary\"><strong> View Cart</strong></a>&nbsp;&nbsp;&nbsp;<a\n" +
            "                                                href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/checkout\"\n" +
            "                                                class=\"checkout btn btn-primary\"><strong> Checkout</strong></a></p>\n" +
            "                                    </div>\n" +
            "                                </li> "

    }
    $('.cart-menu').html(result);
    $('#cart-total').html(count);
}

//shoppingcart.jsp
function changeQuantity(index) {
    var g = document.getElementsByClassName('form-control');
    if (g[index+1].value<1){
        g[index+1].value=1;
    }
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/UpdateCart',
        type: "GET",
        dataType: 'text',
        contentType: "application/json; charset=utf-8",
        data: {index: index, quantity: g[index+1].value},
        success: function (abc1) {
            if (abc1!=null) {
                var user = JSON.parse(abc1);
                console.log(user);
                updateQuickCart(user);
            }else {
                console.log("false")
            }



        }
    });

}
function validate() {

}

$(document).ready(function(){
    $("input").blur(function(){
        if (this.value === ""){
          this.parentElement.parentElement.className +=' has-error';
          var alertt = '<input type=\"text\" name=\"name\" value=\"\" placeholder=\"Họ và tên\" id=\"input-name\" autofocus=\"\" class=\"form-control\">';
          this.parentElement.append( '<input type=\"text\" name=\"name\" value=\"\" placeholder=\"Họ và tên\" id=\"input-name\" autofocus=\"\" class=\"form-control\">' );
        }

    });
});