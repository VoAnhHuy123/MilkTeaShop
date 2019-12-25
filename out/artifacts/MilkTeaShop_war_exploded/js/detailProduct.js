jQuery(function ($) {
    //---------------------------------------------------
    $('#contactForm').submit(function () {
        if ($('input[name="sendmail"]').hasClass('disabled')) {
            return false;
        } else {
            $('.modal-header .close').hide();
            $('#messageDialog').modal('show');
            var username = $('#fullname').val();
            var m = $('#detailcontact').val();
            var address = $('#address').val();
            var p = $('#phonenumber').val();
            var email = $('#mailaddress').val();
            var data = {
                action: "sendmailContact",
                user: username,
                mail: email,
                add: address,
                phone: p,
                message: m
            };
            $.post(ajaxurl, data, function (rdata) {
                //if(rdata==1)
                $('#messageDialog').empty();
                $('#messageDialog').html(rdata.alert);
                $('#messageDialog').modal('show');
                $('.modal-header .close').hide();
            });
            return false;
        }
    });
    //---------------------------------------------------
    $('#orderform').submit(function () {
        if ($('input[name="muahang"]').hasClass('disabled')) {
            return false;
        } else {
            $('.modal-header .close').click();
            $('#messageDialog').modal('show');
        }
    });
    //---------------------------------------------------
    $('.input-group-addon .fa-plus').click(function () {
        var val = $('#quantity').val();
        $('#quantity').val(parseInt(val) + 1);
    });
    //---------------------------------------------------
    $('.input-group-addon .fa-minus').click(function () {
        var val = $('#quantity').val();
        val = parseInt(val) - 1;
        if (val <= 0) {
            val = 1;
        }
        $('#quantity').val(val);
    });
    //---------------------------------------------------
    // $('.clear-price-plus').click(function(){
    // 	$('.pr-plus').html('+0 VND()');
    // 	$('#apid').val('');
    // })
    //---------------------------------------------------
    $('.checked-dia-chi-khac').click(function () {
        var ck = $('#other_address');
        if (ck.is(':checked')) {
            $('.thongtin-nguoinhan').slideToggle('fast');
            $('#other_address').val('yes');
        } else {
            $('.thongtin-nguoinhan').hide('fast');
            $('#other_address').val('');
            var infos = ['fullname', 'phone', 'email', 'address', 'local', 'district'];
            for (i = 0; i < infos.length; i++) {
                $('input[name="receiv_' + infos[i] + '"]').val('');
            }
            $(".thongtin-nguoinhan").find(".receiv-required").each(function () {
                $parents = $(this).parents(".has-feedback");
                console.log("ok");
                if ($parents.hasClass("has-error")) {
                    $parents.removeClass("has-error");
                    $parents.find('.with-errors').empty();
                }
            });
        }
    })
    $(".checked-dia-chi-khac span").click(function () {
        $('.checked-dia-chi-khac label').click();
    });
    //---------------------------------------------------
    $(".checked span").click(function () {
        $(this).parents(".checked").find("label").click();
    });
    //---------------------------------------------------
    $('.edit-message textarea').keyup(function () {
        var text = $(this).val();
        $('.cart-menu-info textarea').val(text);
    })
    //---------------------------------------------------
    $('.cart-menu-info textarea').keyup(function () {
        var text = $(this).val();
        $('.edit-message textarea').val(text);
    })
    //---------------------------------------------------
    $(".checkout-finished").click(function () {
        //var payment_value = $("input[name='select_payment']:checked").val();
        //loading = $("<div class='load-small fl'/>").prependTo($(this));
        $('#messageDialog').modal('show');
        $('.modal-header .close').hide();
        $.post(this.href, function (rdata) {
            //window.location = rdata.return_link;
            $('#messageDialog').empty().html(rdata.alert + rdata.content).modal('show');
            $('.modal-header .close').hide();
        }, 'json');
        return false;
    });
    //---------------------------------------------------
    $('.menu-bar').click(function () {
        $(this).toggleClass('selected');

        if ($(this).hasClass('selected')) {
            $('.mask').addClass('mask-active');
        } else {
            $('.mask').removeClass('mask-active');
        }
        $('.cbp-hrmenu').slideToggle("slow");
    });
    $('.navbar-nav li a').click(function () {
        $(this).toggleClass('selected');
    })
});

/*
 * Ham mua ngay
 */

function buy_now(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();
    $(".ajaxload").show();
    $(f).find(".alert").remove();
    $.post(f.action, sdata, function (rdata) {
        $(f).prepend(rdata.message);
        $(".ajaxload").hide();
    }, 'json');
    return false;
}

/*
* Them vao gio hang
*/

function add_to_cart(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();

    $(".alert").remove();
    $(this).remove();
    var cart_total = parseInt($(".cart-total").text()) + 1;
    $(".cart-total").text(cart_total);

    $.post(f.action, sdata, function (rdata) {
        $(".cart-total").text(rdata.cart_qty);
        $('#list-items table').empty();
        $('#list-items table').html(rdata.list_cart);
        $('.shopcart .side-menu .cart-menu-info .total-info .total_price').html(rdata.cart_price);
        $('.menu-icon').click();
    }, 'json');
    return false;
}

/*
* Xoa san pham khoi gio hang
*/
function del_cart(o) {
    var $ = jQuery;
    $(o).parents("tr").fadeOut();
    $.post(o.href, {key: o.rel}, function (rdata) {
        $(".page-cart .subtotal").text(rdata.subtotal_price);
        $(".cart-total").text(rdata.total);
        $(o).parents("tr").fadeOut("slow", function () {
            $(this).remove();
        });
        if ($(".table").children("tbody").find("tr").length <= 0) {
            window.location = window.location;
        }
    }, 'json');
    return false;
}

/*
* Cap nhat so luong gio hang
*/

function update_qty_cart(o) {
    var $ = jQuery;
    var load = $(o).parents("td").find(".cart-loading");
    var input_qty = $(o).parents('.qty').find('.cart-qty');
    if (o.rel == "plus") {
        input_qty.val(parseInt(input_qty.val()) + 1);
    } else {
        v = parseInt(input_qty.val()) - 1;
        if (v <= 0) {
            v = 1;
        }
        input_qty.val(v);
    }
    load.show();
    var cart_index = $(o).parents("tr").find("input[name='cart_index']").val();
    var car_qty = $(o).parents('.qty').find("input.cart-qty").val();

    $.post(o.href, {key: cart_index, qty: car_qty}, function (rdata) {
        $(".page-cart .subtotal").text(rdata.subtotal_price);
        $(".cart-total").text(rdata.total);
        $(o).parents("tr").find('.total_price').text(rdata.total_price);
        load.hide();
    }, 'json');
    return false;
}

/*
* Submit form checkout
*/

function submit_form_checkout(f) {
    var $ = jQuery;
    var error = false;
    var $htmlfirst = '<ul class="list-unstyled"><li>';
    var $htmllast = '</ul"></li>';
    if ($('#other_address').val() == 'yes') {
        $(f).find(".receiv-required").each(function () {
            if (this.value == "") {
                $parents = $(this).parents(".has-feedback");
                $text = $('#' + this.name).attr('data-error');
                $parents.addClass('has-error');
                $parents.find('.with-errors').empty();
                $parents.find('.with-errors').append($htmlfirst + $text + $htmllast);
                error = true;
            }
            // else{
            // 	$(this).parents(".has-feedback").removeClass("has-error");
            // }
        });

        $(f).find(".required").each(function () {
            if (this.value == "") {
                $parents = $(this).parents(".has-feedback");
                $text = $('#' + this.name).attr('data-error');
                $parents.addClass('has-error');
                $parents.find('.with-errors').empty();
                $parents.find('.with-errors').append($htmlfirst + $text + $htmllast);
                error = true;
            }
            // else{
            // 	$(this).parents(".has-feedback").removeClass("has-error");
            // }
        });
    } else {
        $(f).find(".required").each(function () {
            if (this.value == "") {
                $parents = $(this).parents(".has-feedback");
                $text = $('#' + this.name).attr('data-error');
                $parents.addClass('has-error');
                $parents.find('.with-errors').empty();
                $parents.find('.with-errors').append($htmlfirst + $text + $htmllast);
                error = true;
            } else {
                $(this).parents(".has-feedback").removeClass("has-error");
            }
        });
    }

    if (error == false) {
        f.submit();
    }
    return false;
}

//---------------------------------------------------
function user_login(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();
    if (checkAuth(sdata) == false) {
        return false;
    } else {
        $('#messageDialog').modal('show');
        $.post(f.action, sdata, function (rdata) {
            if (rdata.error == true) {
                $('#messageDialog').empty();
                $('#messageDialog').html(rdata.alert);
                $('#messageDialog').modal('show');
            } else {
                if (rdata.site != "") {
                    window.location = rdata.site;
                } else {
                    $('#messageDialog').modal('hide');
                    $('.nav-right .register').html(rdata.url);
                    $('.page-register').fadeOut();
                    $('#messageDialogResult').html(rdata.alert);
                    $('#messageDialogResult').modal('show');
                    $('.page-success').removeClass('hidden').fadeIn();
                    $('.modal-backdrop.in').hide();
                    $('.modal-header .close').hide();
                }
            }
        }, 'json');
        return false;
    }
};

//---------------------------------------------------
function user_register(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();
    if (checkAuth(sdata) == false) {
        return false;
    } else {
        $('#messageDialog').modal('show');
        $.post(f.action, sdata, function (rdata) {
            $('#messageDialog').modal('hide');
            $('.nav-right .register').html(rdata.url);
            $('.page-register').fadeOut();
            $('#messageDialogResult').html(rdata.alert);
            $('#messageDialogResult').modal('show');
            $('.page-success').removeClass('hidden').fadeIn();
            $('.modal-backdrop.in').hide();
            $('.modal-header .close').hide();
        });
        return false;
    }
};

//---------------------------------------------------
function user_update(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();
    if (checkAuth(sdata) == false) {
        return false;
    } else {
        $('#messageDialog').modal('show');
        $.post(f.action, sdata, function (rdata) {
            $('#messageDialog').empty().html(rdata.alert).modal('show');
            $('.modal-header .close').hide();
        });
        return false;
    }
};

//---------------------------------------------------
function checkAuth(sdata) {
    var $ = jQuery;
    var arr = sdata;
    var $htmlfirst = '<ul class="list-unstyled"><li>';
    var $htmllast = '</ul"></li>';
    for (var i in arr) {
        if (arr[i].value == '' && $('#' + arr[i].name)[0].hasAttribute('required') == true) {
            $parents = $('#' + arr[i].name).parents('.has-feedback');
            $text = $('#' + arr[i].name).attr('data-error');
            $parents.addClass('has-error');
            $parents.find('.with-errors').empty();
            $parents.find('.with-errors').append($htmlfirst + $text + $htmllast);
            return false;
        }
    }
    return true;
}

//---------------------------------------------------
function receiveMail(f) {
    var $ = jQuery;
    var sdata = $(f).serializeArray();
    if (checkAuth(sdata) == false) {
        return false;
    } else {
        $('#messageDialog').modal('show');
        $('.modal-header .close').hide();
        $.post(f.action, sdata, function (rdata) {
            $('#messageDialog').empty().html(rdata.alert).modal('show');
        });
        return false;
    }
}

$(document).ready(function () {
    if ($("#email_subscribe").focus = true) {
        $("#email_subscribe").keypress(function (event) {
            if (event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });
    }
    $('.sugar').click(function () {
        if ($('.sugar').hasClass('disable')) {
            $('#sugarModal').modal('show');
            return false;
        }
    });
});

function promotionCode() {
    var $ = jQuery;
    var $_code = $('#promotion_code').val();
    $('.loader').show();
    var data = {
        action: "promotion_code",
        code: $_code,
    };
    $.post(ajaxurl, data, function (rdata) {
        data = $.parseJSON(rdata);
        if (data[0].price_final) {
            var limited = data[0].limited ? ', tối đa ' + format_curency(data[0].limited) : '';
            $('.subtotal').html(format_curency(data[0].price_final) + '(Đã giảm ' + data[0].method + limited + ') VND');
        }
        $('.loader').hide();
    });
}

format_curency = ((money) => {
    money = money.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
    return money;
})


//VoAnhHuy
function addToCartMain(id) {
    var si="";
    var radio = document.getElementsByName('sizename');
    for (var i=0; i< radio.length ;i++){
        if (radio[i].checked)
           si= radio[i].value;

    }
    var arr = new Array();

    $('input[type="checkbox"]:checked').each(function () {
        var topping= new Object();
        topping.name = $(this).attr('value');
        topping.price=  $(this).attr('data-price');
        arr.push(topping);
        
    });


    var item = {
        productId: id,
        name: $('.col-lg-4 h2').text(),
        image: $('#tmzoom').attr('src'),
        price: Number($('.price span').html()) + Number($('.pr-plus span').html()),
        quantity: document.getElementById('quantity').value,
        size: si,
        toppingList: arr

    };
   var t = JSON.stringify(item);
    $.ajax({
        url: 'http://localhost:8080/MilkTeaShop/AddToCartMain',
        type: 'GET',
        dataType: 'text',
        data: {t: t},
        success: function (abc) {
           var a  = JSON.parse(abc);
            // alert(abc);
          updateQuickCart(a);
        }

    })

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