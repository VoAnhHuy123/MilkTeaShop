<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fodder Restaurant Store</title>
    <base/>
    <meta name="description" content="Fodder Restaurant Store Opencart Responsive Theme is designed for Food, Restaurant, Cake, Vegetables, Pizza, Bakery, Grocery, Wine and multi purpose stores. This Theme is looking good with colors combination and professional look.
"/>
    <meta name="keywords" content="Food, Restaurant, Cake, Vegetables, Pizza, Bakery, Grocery, Wine"/>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Sintony:400,700" rel="stylesheet">
    <link href="catalog/view/theme/Fodder/stylesheet/stylesheet.css" rel="stylesheet"/>

    <!-- Codezeel www.codezeel.com - Start -->
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/magnific/magnific-popup.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/carousel.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/custom.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/lightbox.css"/>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/animate.css"/>


    <link href="style.html" type="text/css" rel="style.rel" media="style.media"/>
    <link href="style.html" type="text/css" rel="style.rel" media="style.media"/>


    <link href="catalog/view/javascript/jquery/swiper/css/swiper.min.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <link href="catalog/view/javascript/jquery/swiper/css/opencart.css" type="text/css" rel="stylesheet"
          media="screen"/>
    <script src="catalog/view/javascript/jquery/swiper/js/swiper.jquery.js" type="text/javascript"></script>

    <link href="image/catalog/cart.png" rel="icon"/>
    <!-- Codezeel www.codezeel.com - Start -->
    <script type="text/javascript" src="catalog/view/javascript/codezeel/custom.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/jstree.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/carousel.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/codezeel.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/jquery.custom.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/jquery.formalize.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/lightbox/lightbox-2.6.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/tabs.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/jquery.elevatezoom.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/bootstrap-notify.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/doubletaptogo.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/parallax.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
    <!-- Codezeel www.codezeel.com - End -->

    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="js/ajax.js"></script>
</head>


<body class="checkout-cart layout-2 left-col">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>

<div class="wrap-breadcrumb parallax-breadcrumb">
    <div class="container"></div>
</div>

<!-- ======= Quick view JS ========= -->
<script>

    function quickbox() {
        if ($(window).width() > 767) {
            $('.quickview-button').magnificPopup({
                type: 'iframe',
                delegate: 'a',
                preloader: true,
                tLoading: 'Loading image #%curr%...',
            });
        }
    }

    jQuery(document).ready(function () {
        quickbox();
    });
    jQuery(window).resize(function () {
        quickbox();
    });

</script>
<div id="checkout-cart" class="container">
    <ul class="breadcrumb">
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/cart">Shopping Cart</a>
        </li>
    </ul>
<%--    <div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> Success: You have modified--%>
<%--        your shopping cart!--%>
<%--        <button type="button" class="close" data-dismiss="alert">&times;</button>--%>
<%--    </div>--%>
    <div class="row">
        <aside id="column-left" class="col-sm-3 hidden-xs">
            <div class="box">
                <div class="box-heading">Account</div>
                <div class="list-group">

                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/account "
                       class="list-group-item">My Account </a>

                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/edit "
                       class="list-group-item">Edit Account</a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/password"
                        class="list-group-item">Password</a>

                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address"
                       class="list-group-item">Address Book</a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/wishlist "
                        class="list-group-item">Wish List </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/order "
                        class="list-group-item">Order History </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/download"
                        class="list-group-item">Downloads </a><a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/recurring"
                        class="list-group-item">Recurring payments </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/reward "
                        class="list-group-item">Reward Points </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/return"
                        class="list-group-item">Returns </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/transaction"
                        class="list-group-item">Transactions </a> <a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/newsletter"
                        class="list-group-item">Newsletter </a>

                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/logout"
                       class="list-group-item">Logout </a>

                </div>
            </div>

            <div class="swiper-viewport">
                <div id="banner0" class="swiper-container  single-banner ">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><a href="#"><img
                                src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/left-banner-1-257x320.jpg"
                                alt="Left banner" class="img-responsive"/></a></div>
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <script type="text/javascript"><!--
            $('#banner0').swiper({
                effect: 'fade',
                autoplay: 2500,
                pagination: '.swiper-pagination',  // If we need pagination
                autoplayDisableOnInteraction: false
            });
            --></script>
            <div class="box special">
                <div class="container">
                    <div class="box-heading">Specials</div>
                    <div class="box-content">

                        <div class="box-product  productbox-grid" id="special-grid">
                            <div class="product-items">
                                <div class="product-block product-thumb transition">
                                    <div class="product-block-inner">
                                        <div class="image">
                                            <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35">
                                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/03-85x85.jpg"
                                                     title="Commodi Consequatur" alt="Commodi Consequatur"
                                                     class="img-responsive reg-image"/>
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/04-85x85.jpg"
                                                     title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">2% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List " onclick="wishlist.add('35 ');"><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title="Quick view">
                                                    <a class="quickbox"
                                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=35">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip"
                                                        title="Add to Compare " onclick="compare.add('35 ');"><i
                                                        class="fa fa-exchange"></i></button>
                                                <button type="button" class="addtocart" onclick="cart.add('35 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>

                                        <div class="product-details">
                                            <div class="caption">

                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                </div>

                                                <h4>
                                                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35 ">Commodi
                                                        Consequatur </a></h4>


                                                <p class="price">
                                                    <span class="price-new">$110.00</span> <span class="price-old">$112.00</span>
                                                    <span class="price-tax">Ex Tax: $110.00</span>
                                                </p>

                                                <button type="button" class="addtocart" onclick="cart.add('35 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-items">
                                <div class="product-block product-thumb transition">
                                    <div class="product-block-inner">
                                        <div class="image">
                                            <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=42">
                                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/04-85x85.jpg"
                                                     title="Consectetur Hampden" alt="Consectetur Hampden"
                                                     class="img-responsive reg-image"/>
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/10-85x85.jpg"
                                                     title="Consectetur Hampden" alt="Consectetur Hampden"/>
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">8% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List " onclick="wishlist.add('42 ');"><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title="Quick view">
                                                    <a class="quickbox"
                                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=42">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip"
                                                        title="Add to Compare " onclick="compare.add('42 ');"><i
                                                        class="fa fa-exchange"></i></button>
                                                <button type="button" class="addtocart" onclick="cart.add('42 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>

                                        <div class="product-details">
                                            <div class="caption">

                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                </div>

                                                <h4>
                                                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=42 ">Consectetur
                                                        Hampden </a></h4>


                                                <p class="price">
                                                    <span class="price-new">$90.00</span> <span
                                                        class="price-old">$98.00</span>
                                                    <span class="price-tax">Ex Tax: $90.00</span>
                                                </p>

                                                <button type="button" class="addtocart" onclick="cart.add('42 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-items">
                                <div class="product-block product-thumb transition">
                                    <div class="product-block-inner">
                                        <div class="image">
                                            <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=30">
                                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/05-85x85.jpg"
                                                     title="Exercitat Virginia" alt="Exercitat Virginia"
                                                     class="img-responsive reg-image"/>
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/11-85x85.jpg"
                                                     title="Exercitat Virginia" alt="Exercitat Virginia"/>
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">11% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip"
                                                        title="Add to Wish List " onclick="wishlist.add('30 ');"><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title="Quick view">
                                                    <a class="quickbox"
                                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=30">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip"
                                                        title="Add to Compare " onclick="compare.add('30 ');"><i
                                                        class="fa fa-exchange"></i></button>
                                                <button type="button" class="addtocart" onclick="cart.add('30 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>

                                        <div class="product-details">
                                            <div class="caption">

                                                <div class="rating">
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                    <span class="fa fa-stack"><i
                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                </div>

                                                <h4>
                                                    <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=30 ">Exercitat
                                                        Virginia </a></h4>


                                                <p class="price">
                                                    <span class="price-new">$85.00</span> <span
                                                        class="price-old">$95.00</span>
                                                    <span class="price-tax">Ex Tax: $85.00</span>
                                                </p>

                                                <button type="button" class="addtocart" onclick="cart.add('30 ');">
                                                    <span>Add to Cart</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <span class="special_default_width" style="display:none; visibility:hidden"></span>

        </aside>

        <div id="content" class="col-sm-9">
            <% HttpSession session2 = request.getSession();
                User user = (User) session2.getAttribute("user");
                if (user.getShoppingCart().getListItem().size() == 0) {
            %>
            <h1>Shopping Cart</h1>
            <p>Your shopping cart is empty!</p>
            <div class="buttons clearfix">
                <div class="pull-right"><a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"
                        class="btn btn-primary">Continue</a></div>
            </div>
            <%
            } else {
            %>
            <h1 class="page-title">Shopping Cart
            </h1>
            <form action="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/cart/edit"
                  method="post">
                <div class="table-responsive">
                    <table class="table table-bordered shopping-cart">
                        <thead>
                        <tr>
                            <td class="text-center">Image</td>
                            <td class="text-left">Product Name</td>
                            <td class="text-left">Topping</td>
                            <td class="text-left">Quantity</td>
                            <td class="text-right">Unit Price</td>
                            <td class="text-right">Total</td>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            ArrayList<Item> itemArrayList = (ArrayList<Item>) user.getShoppingCart().getListItem();
                            for (Item item : itemArrayList) {%>
                        <tr>
                            <td class="text-center"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35"><img
                                    style="height: 87px; width: 87px" src="<%=item.getImage()%>"
                                    alt="Commodi Consequatur" title="Commodi Consequatur" class="img-thumbnail"></a>
                            </td>
                            <td class="text-left"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35"><%=item.getName()%>
                            </a> <br>
                                <small>Size: <%=item.getSize()%>
                                </small></td>
                            <td class="text-left">
                                <%
                                    ArrayList<Topping> toppings = (ArrayList<Topping>) item.getToppingList();
                                    if (toppings == null) {
                                %>
                                <small>(Không có topping)</small>
                                <%
                                } else {
                                    for (Topping topping : toppings) {
                                %>
                                <small>+ <%=topping.getName()%>: <%=topping.getPrice()%>đ</small><br>
                                <%}%>
                                <%}%>

                            </td>
                            <td class="text-left" style="width: 160px">
                                <div class="input-group btn-block" style="max-width: 200px;">
                                    <input type="number" onchange="changeQuantity(<%=itemArrayList.indexOf(item)%>)"
                                           style="max-width: 70px" name="quantity[80]" value="<%=item.getQuantity()%>"
                                           size="1" class="form-control"/>
                                    <span class="input-group-btn">

                  <button type="button" data-toggle="tooltip" title="" class="btn btn-danger"
                          onclick="deleteFromCart(<%=itemArrayList.indexOf(item)%>)" data-original-title="Remove" aria-describedby="tooltip974566"><i
                          class="fa fa-times-circle"></i></button>
                  </span>
                                </div>
                            </td>
                            <td class="text-right"><%=item.getPrice() / item.getQuantity()%>đ</td>
                            <td class="text-right"><%=item.getPrice()%>đ</td>
                        </tr>
                        <%}%>
                        </tbody>

                    </table>
                </div>
            </form>
            <h3>What would you like to do next?</h3>
            <p>Choose if you have a discount code or reward points you want to use or would like to estimate your
                delivery cost.</p>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><a href="#collapse-coupon" class="accordion-toggle"
                                                   data-toggle="collapse" data-parent="#accordion">Use Coupon Code <i
                                class="fa fa-caret-down"></i></a></h4>
                    </div>
                    <div id="collapse-coupon" class="panel-collapse collapse">
                        <div class="panel-body">
                            <label class="col-sm-2 control-label" for="input-coupon">Enter your coupon here</label>
                            <div class="input-group">
                                <input type="text" name="coupon" value="" placeholder="Enter your coupon here"
                                       id="input-coupon" class="form-control">
                                <span class="input-group-btn">
        <input type="button" value="Apply Coupon" id="button-coupon" data-loading-text="Loading..."
               class="btn btn-primary">
        </span></div>
<%--                            <script type="text/javascript"><!----%>
<%--                            $('#button-coupon').on('click', function () {--%>
<%--                                $.ajax({--%>
<%--                                    url: 'index.php?route=extension/total/coupon/coupon',--%>
<%--                                    type: 'post',--%>
<%--                                    data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),--%>
<%--                                    dataType: 'json',--%>
<%--                                    beforeSend: function () {--%>
<%--                                        $('#button-coupon').button('loading');--%>
<%--                                    },--%>
<%--                                    complete: function () {--%>
<%--                                        $('#button-coupon').button('reset');--%>
<%--                                    },--%>
<%--                                    success: function (json) {--%>
<%--                                        $('.alert-dismissible').remove();--%>

<%--                                        if (json['error']) {--%>
<%--                                            $('.breadcrumb').after('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>

<%--                                            $('html, body').animate({scrollTop: 0}, 'slow');--%>
<%--                                        }--%>

<%--                                        if (json['redirect']) {--%>
<%--                                            location = json['redirect'];--%>
<%--                                        }--%>
<%--                                    },--%>
<%--                                    error: function (xhr, ajaxOptions, thrownError) {--%>
<%--                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                                    }--%>
<%--                                });--%>
<%--                            });--%>
<%--                            //--></script>--%>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><a href="#collapse-voucher" data-toggle="collapse"
                                                   data-parent="#accordion" class="accordion-toggle">Use Gift
                            Certificate <i class="fa fa-caret-down"></i></a></h4>
                    </div>
                    <div id="collapse-voucher" class="panel-collapse collapse">
                        <div class="panel-body">
                            <label class="col-sm-2 control-label" for="input-voucher">Enter your gift certificate code
                                here</label>
                            <div class="input-group">
                                <input type="text" name="voucher" value=""
                                       placeholder="Enter your gift certificate code here" id="input-voucher"
                                       class="form-control">
                                <span class="input-group-btn">
        <input type="submit" value="Apply Voucher" id="button-voucher" data-loading-text="Loading..."
               class="btn btn-primary">
        </span></div>
                            <script type="text/javascript"><!--
                            $('#button-voucher').on('click', function () {
                                $.ajax({
                                    url: 'index.php?route=extension/total/voucher/voucher',
                                    type: 'post',
                                    data: 'voucher=' + encodeURIComponent($('input[name=\'voucher\']').val()),
                                    dataType: 'json',
                                    beforeSend: function () {
                                        $('#button-voucher').button('loading');
                                    },
                                    complete: function () {
                                        $('#button-voucher').button('reset');
                                    },
                                    success: function (json) {
                                        $('.alert-dismissible').remove();

                                        if (json['error']) {
                                            $('.breadcrumb').after('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                            $('html, body').animate({scrollTop: 0}, 'slow');
                                        }

                                        if (json['redirect']) {
                                            location = json['redirect'];
                                        }
                                    },
                                    error: function (xhr, ajaxOptions, thrownError) {
                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                    }
                                });
                            });
                            //--></script>
                        </div>
                    </div>
                </div>

            </div>
            <br>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-8">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td class="text-right"><strong>Sub-Total:</strong></td>
                            <td class="text-right">$250.00</td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Eco Tax (-2.00):</strong></td>
                            <td class="text-right">$4.00</td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>VAT (20%):</strong></td>
                            <td class="text-right">$50.00</td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Total:</strong></td>
                            <td class="text-right">$304.00</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="buttons clearfix">
                <div class="pull-left"><a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"
                        class="btn btn-default">Continue Shopping</a></div>
                <div class="pull-right"><a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/checkout"
                        class="btn btn-primary">Checkout</a></div>
            </div>
            <%}%>
        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body>
</html>