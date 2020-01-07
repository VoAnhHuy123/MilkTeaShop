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
            if (abc1 != null) {
                var user = JSON.parse(abc1);
                console.log(id);
                updateQuickCart(user);
            } else {

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

    if (listItem.length == 0) {
        result +=
            "      <p class=\"text-center\">Your shopping cart is empty!</p>\n" +
            "    </li>"
    } else {


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
                "                                                <button type=\"button\" onclick=\"deleteFromCart(" + i + ")\" title=\"Remove\"\n" +
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
    if (g[index + 1].value < 1) {
        g[index + 1].value = 1;
    }
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/UpdateCart',
        type: "GET",
        dataType: 'text',
        contentType: "application/json; charset=utf-8",
        data: {index: index, quantity: g[index + 1].value},
        success: function (abc1) {
            if (abc1 != null) {
                var user = JSON.parse(abc1);
                console.log(user);
                updateQuickCart(user);
            } else {
                console.log("false")
            }


        }
    });

}

//họ và tên
$(document).ready(function () {
    $("#input-name").focus(function () {

        console.log("focus");
        if ($('.form-group')[0].classList.contains('has-error')) {
            $('.form-group')[0].classList.remove('has-error');
            $("input#input-name").next().remove();
        }
    });
    $("#input-name").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-name').val();
            console.log(VAL);
            var phoneNumberRegex = /(09|01[2|6|8|9])+([0-9]{8})\b/g;
            if (VAL === "") {
                if (!$('.form-group')[0].classList.contains('has-error')) {
                    $('.form-group')[0].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng nhập Họ và tên");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[0].appendChild(node);
                }

            } else {
                $('.form-group')[0].className += ' has-success';
            }
        });
    });
});


//sô điện thoại
$(document).ready(function () {
    $("#input-phone").focus(function () {

        console.log("focus");
        if ($('.form-group')[1].classList.contains('has-error')) {
            $('.form-group')[1].classList.remove('has-error');
            $("input#input-phone").next().remove();
        }
    });
    $("#input-phone").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-phone').val();
            console.log(VAL);
            var phoneNumberRegex = /(09|01[2|6|8|9])+([0-9]{8})\b/g;
            if (VAL === "") {
                if (!$('.form-group')[1].classList.contains('has-error')) {
                    $('.form-group')[1].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng nhập Số điện thoại");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[1].appendChild(node);
                }

            } else {
                if (!phoneNumberRegex.test(VAL)) {
                    if (!$('.form-group')[1].classList.contains('has-error')) {
                        $('.form-group')[1].className += ' has-error';
                        var node = document.createElement("DIV");
                        var textnode = document.createTextNode("Số điện thoại không hợp lệ");
                        node.appendChild(textnode);
                        node.classList.add("text-danger");
                        // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                        $(".col-sm-10")[1].appendChild(node);
                    }
                } else {
                    $('.form-group')[1].className += ' has-success';
                }
            }
        });
    });
});
//quận/huyện
$(document).ready(function () {
    $("#input-zone").focus(function () {
        console.log("focus");
        if ($('.form-group')[3].classList.contains('has-error')) {
            console.log("has-error");
            $('.form-group')[3].classList.remove('has-error');
            $("#input-zone").next().next().remove();
        }
    });
    $("#input-zone").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-zone').val();
            console.log(VAL);

            if (VAL === "") {
                if (!$('.form-group')[3].classList.contains('has-error')) {
                    $('.form-group')[3].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng chọn Quận/Huyện");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[3].appendChild(node);
                }

            } else {
                $('.form-group')[3].className += ' has-success';
            }
        });
    });
});
//Phường xã
$(document).ready(function () {
    $("#input-ward").focus(function () {

        console.log("focus");
        if ($('.form-group')[4].classList.contains('has-error')) {
            console.log("has-remove");
            $('.form-group')[4].classList.remove('has-error');
            $("#input-ward").next().next().remove();
        }
    });
    $("#input-ward").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-ward').val();
            console.log(VAL);
            if (VAL === "") {
                if (!$('.form-group')[4].classList.contains('has-error')) {
                    $('.form-group')[4].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng chọn phường xã");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[4].appendChild(node);
                }

            } else {
                $('.form-group')[4].className += ' has-success';
            }
        });
    });
});
//địa chỉ
$(document).ready(function () {
    $("#input-address").focus(function () {

        console.log("focus");
        if ($('.form-group')[5].classList.contains('has-error')) {
            $('.form-group')[5].classList.remove('has-error');
            $("#input-address").next().remove();
        }
    });
    $("#input-address").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-address').val();
            console.log(VAL.trim());
            if (VAL.trim() === "") {
                if (!$('.form-group')[5].classList.contains('has-error')) {
                    $('.form-group')[5].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng nhập Địa chỉ");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[5].appendChild(node);
                }

            } else {
                $('.form-group')[5].className += ' has-success';
            }
        });
    });
});
// loại địa chỉ
$(document).ready(function () {
    $("#input-typeaddress").focus(function () {

        console.log("focus");
        if ($('.form-group')[6].classList.contains('has-error')) {
            $('.form-group')[6].classList.remove('has-error');
            $("#input-typeaddress").next().next().remove();
        }
    });
    $("#input-typeaddress").blur(function () {
        console.log("blur");
        jQuery(function () {
            var VAL = $('#input-typeaddress').val();
            console.log(VAL.trim());
            if (VAL.trim() === "") {
                if (!$('.form-group')[6].classList.contains('has-error')) {
                    $('.form-group')[6].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Vui lòng chọn loại địa chỉ");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[6].appendChild(node);
                }

            } else {
                $('.form-group')[6].className += ' has-success';
            }
        });
    });
});
var check = 2;

function f() {
    if ($('.form-group').hasClass('has-error')) {
        check = 1;
    } else {
        check = 2;
    }

}

function again() {
    jQuery(function () {
        var VAL = $('#input-name').val();
        console.log(VAL);
        var phoneNumberRegex = /(09|01[2|6|8|9])+([0-9]{8})\b/g;
        if (VAL === "") {
            if (!$('.form-group')[0].classList.contains('has-error')) {
                $('.form-group')[0].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng nhập Họ và tên");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[0].appendChild(node);
            }
        } else {
            $('.form-group')[0].className += ' has-success';
        }
    });
    jQuery(function () {
        var VAL = $('#input-phone').val();
        console.log(VAL);
        var phoneNumberRegex = /(09|01[2|6|8|9])+([0-9]{8})\b/g;
        if (VAL === "") {
            if (!$('.form-group')[1].classList.contains('has-error')) {
                $('.form-group')[1].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng nhập Số điện thoại");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[1].appendChild(node);
            }

        } else {
            if (!phoneNumberRegex.test(VAL)) {
                if (!$('.form-group')[1].classList.contains('has-error')) {
                    $('.form-group')[1].className += ' has-error';
                    var node = document.createElement("DIV");
                    var textnode = document.createTextNode("Số điện thoại không hợp lệ");
                    node.appendChild(textnode);
                    node.classList.add("text-danger");
                    // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                    $(".col-sm-10")[1].appendChild(node);
                }
            } else {
                $('.form-group')[1].className += ' has-success';
            }
        }
    });
    jQuery(function () {
        var VAL = $('#input-zone').val();
        console.log(VAL);

        if (VAL === "") {
            if (!$('.form-group')[3].classList.contains('has-error')) {
                $('.form-group')[3].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng chọn Quận/Huyện");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[3].appendChild(node);
            }

        } else {
            $('.form-group')[3].className += ' has-success';
        }
    });
    jQuery(function () {
        var VAL = $('#input-ward').val();
        console.log(VAL);
        if (VAL === "") {
            if (!$('.form-group')[4].classList.contains('has-error')) {
                $('.form-group')[4].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng chọn phường xã");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[4].appendChild(node);
            }

        } else {
            $('.form-group')[4].className += ' has-success';
        }
    });
    jQuery(function () {
        var VAL = $('#input-address').val();
        console.log(VAL.trim());
        if (VAL.trim() === "") {
            if (!$('.form-group')[5].classList.contains('has-error')) {
                $('.form-group')[5].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng nhập Địa chỉ");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[5].appendChild(node);
            }

        } else {
            $('.form-group')[5].className += ' has-success';
        }
    });
    jQuery(function () {
        var VAL = $('#input-typeaddress').val();
        console.log(VAL.trim());
        if (VAL.trim() === "") {
            if (!$('.form-group')[6].classList.contains('has-error')) {
                $('.form-group')[6].className += ' has-error';
                var node = document.createElement("DIV");
                var textnode = document.createTextNode("Vui lòng chọn loại địa chỉ");
                node.appendChild(textnode);
                node.classList.add("text-danger");
                // var alertt = '<div class="text-danger">Vui lòng nhập Họ và tên</div>';
                $(".col-sm-10")[6].appendChild(node);
            }

        } else {
            $('.form-group')[6].className += ' has-success';
        }
    });
}

var a = 0;
$(document).on("submit", "form", function (e) {

    if (a === 0) {
        again();
        a = 1;
    }
    f();
    if (check === 1) {
        e.preventDefault();

    } else {
        a = 0;
    }
});

