var add = "";

function addToCartSmall(id) {
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/AddToCartSmall',
        type: 'GET',
        dataType: 'text',
        data: {id: id},
        success: function (abc) {

            var json = JSON.parse(abc);
            updateQuickCart(json);
        }

    })


}

function deleteFromCart(index) {
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/DeleteFromCart',
        type: "GET",
        dataType: 'text',
        cache: true,
        // async:false,
        contentType: "application/json; charset=utf-8",
        data: {index: index},
        success: function (abc1) {
            var localCache = {
                /**
                 * timeout for cache in millis
                 * @type {number}
                 */
                timeout: 30000,
                /**
                 * @type {{_: number, data: {}}}
                 **/
                data: {},
                remove: function (url) {
                    delete localCache.data[url];
                },
                exist: function (url) {
                    return !!localCache.data[url] && ((new Date().getTime() - localCache.data[url]._) < localCache.timeout);
                },
                get: function (url) {
                    console.log('Getting in cache for url' + url);
                    return localCache.data[url].data;
                },
                set: function (url, cachedData, callback) {
                    localCache.remove(url);
                    localCache.data[url] = {
                        _: new Date().getTime(),
                        data: cachedData
                    };
                    if ($.isFunction(callback)) callback(cachedData);
                }
            };

            $.ajaxPrefilter(function (options, originalOptions, jqXHR) {
                if (options.cache) {
                    var complete = originalOptions.complete || $.noop,
                        url = originalOptions.url;
                    //remove jQuery cache as we have our own localCache
                    options.cache = false;
                    options.beforeSend = function () {
                        if (localCache.exist(url)) {
                            complete(localCache.get(url));
                            return false;
                        }
                        return true;
                    };
                    options.complete = function (data, textStatus) {
                        localCache.set(url, data, complete);
                    };
                }
            });
            if (abc1!=null) {
                var user = JSON.parse(abc1);
                console.log(user.shoppingCart.listItem.length);
                updateQuickCart(user);
                updateMainCart(user);
            }else {
                console.log("false")
            }
        },

    })

}
function updateMainCart(user) {
    console.log('âfsda');
    var listItem = user.shoppingCart.listItem;
    result=" <h1 class=\"page-title\">Shopping Cart\n" +
        "            </h1>\n";
    if (listItem.length==0){
        result=" <h1>Shopping Cart</h1>\n" +
            "            <p>Your shopping cart is empty!</p>\n" +
            "            <div class=\"buttons clearfix\">\n" +
            "                <div class=\"pull-right\"><a\n" +
            "                        href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home\"\n" +
            "                        class=\"btn btn-primary\">Continue</a></div>\n" +
            "            </div>";
    }else{

         result+=   "            <form action=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/cart/edit\"\n" +
            "                  method=\"post\">\n" +
            "                <div class=\"table-responsive\">\n" +
            "                    <table class=\"table table-bordered shopping-cart\">\n" +
            "                        <thead>\n" +
            "                        <tr>\n" +
            "                            <td class=\"text-center\">Image</td>\n" +
            "                            <td class=\"text-left\">Product Name</td>\n" +
            "                            <td class=\"text-left\">Topping</td>\n" +
            "                            <td class=\"text-left\">Quantity</td>\n" +
            "                            <td class=\"text-right\">Unit Price</td>\n" +
            "                            <td class=\"text-right\">Total</td>\n" +
            "                        </tr>\n" +
            "                        </thead>\n" +
            "                        <tbody>";
        for (i = 0; i < listItem.length; i++) {
            result+="  <tr>\n" +
                "                            <td class=\"text-center\"><a\n" +
                "                                    href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35\"><img\n" +
                "                                    style=\"height: 87px; width: 87px\" src=\""+listItem[i].image+"\"\n" +
                "                                    alt=\"Commodi Consequatur\" title=\"Commodi Consequatur\" class=\"img-thumbnail\"></a>\n" +
                "                            </td>\n" +
                "                            <td class=\"text-left\"><a\n" +
                "                                    href=\"https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35\">"+listItem[i].name+"\n" +
                "                            </a> <br>\n" +
                "                                <small>Size: "+listItem[i].size+"\n" +
                "                                </small></td>\n" +
                "                            <td class=\"text-left\">\n";

                if (listItem[i].toppingList==null){
                    result+=  " <small>(Không có topping)</small>\n" ;
                }else{
                    for (j = 0; j < listItem[i].toppingList.length; j++) {
                        result+="<small>+ "+listItem[i].toppingList[0].name+": "+ listItem[i].toppingList[0].price+"đ</small><br>\n";
                    }
                }
               result+= "                            </td>\n" +
                "                            <td class=\"text-left\" style=\"width: 160px\">\n" +
                "                                <div class=\"input-group btn-block\" style=\"max-width: 200px;\">\n" +
                "                                    <input type=\"number\" onchange=\"changeQuantity("+i+")\"\n" +
                "                                           style=\"max-width: 70px\" name=\"quantity[80]\" value=\""+listItem[i].quantity+"\"\n" +
                "                                           size=\"1\" class=\"form-control\"/>\n" +
                "                                    <span class=\"input-group-btn\">\n" +
                "\n" +
                "                  <button type=\"button\" data-toggle=\"tooltip\" title=\"\" class=\"btn btn-danger\"\n" +
                "                          onclick=\""+deleteFromCart(i)+"\" data-original-title=\"Remove\" aria-describedby=\"tooltip974566\"><i\n" +
                "                          class=\"fa fa-times-circle\"></i></button>\n" +
                "                  </span>\n" +
                "                                </div>\n" +
                "                            </td>\n" +
                "                            <td class=\"text-right\">"+listItem[i].price / listItem[i].quantity+"đ</td>\n" +
                "                            <td class=\"text-right\">"+listItem[i].price+"đ</td>\n" +
                "                        </tr>";
        }
    }
    $('#content').html(result);
    console.log("abc")

}

function updateQuickCart(user) {

    var listItem = user.shoppingCart.listItem;
    var result = "<li>\n";
    var total = 0;
    var count = 0;
    var i;
    var index=-1;
    if (listItem.length==0){
        result+=
            "      <p class=\"text-center\">Your shopping cart is empty!</p>\n" +
            "    </li>"
    }else {


        for (i = 0; i < listItem.length; i++) {
            index++;
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
                "                                                <button type=\"button\" onclick=\"deleteFromCart(" + index + ")\" title=\"Remove\"\n" +
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