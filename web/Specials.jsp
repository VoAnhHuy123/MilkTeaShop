<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html dir="ltr" lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product</title>
    <base/>
    <meta name="description" content="Example of category description"/>

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

    <link href="index98dc.html?route=product/category&amp;path=20" rel="canonical"/>
    <link href="indexf341.html?route=product/category&amp;path=20&amp;page=2" rel="next"/>
    <link href="image/catalog/cart.png" rel="icon"/>
    <!-- Codezeel www.codezeel.com - Start -->
    <script type="text/javascript" src="catalog/view/javascript/codezeel/custom.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/codezeel/jstree.min.js"></script>
    <%--    <script type="text/javascript" src="catalog/view/javascript/codezeel/carousel.min.js"></script>--%>
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
    <%--    <script src="Javascript/Paging.js" type="text/javascript"></script>--%>
    <%--    <script src="Javascript/Pagination.js" type="text/javascript"></script>--%>
</head>
<body class="product-special layout-2 left-col">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>
<div class="wrap-breadcrumb parallax-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i
                    class="fa fa-home"></i></a></li>
            <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special">Special
                Offers</a></li>
        </ul>
    </div>
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
<div id="product-special" class="container">

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
                <div id="banner0"
                     class="swiper-container  single-banner  swiper-container-horizontal swiper-container-fade">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide swiper-slide-active"
                             style="width: 204px; opacity: 1; transform: translate3d(0px, 0px, 0px);"><a href="#"><img
                                src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/left-banner-1-257x320.jpg"
                                alt="Left banner" class="img-responsive"></a></div>
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination swiper-pagination-bullets"><span
                            class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
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
                                                     class="img-responsive reg-image">
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/04-85x85.jpg"
                                                     title="Commodi Consequatur" alt="Commodi Consequatur">
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">2% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip" title=""
                                                        onclick="wishlist.add('35 ');" data-placement="left"
                                                        data-original-title="Add to Wish List "><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title=""
                                                     data-placement="left" data-original-title="Quick view"><a
                                                        class="quickbox"
                                                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=35">
                                                    <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip" title=""
                                                        onclick="compare.add('35 ');" data-placement="left"
                                                        data-original-title="Add to Compare "><i
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
                                                    <span class="price-new">$134.00</span> <span class="price-old">$136.40</span>
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
                                                     class="img-responsive reg-image">
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/10-85x85.jpg"
                                                     title="Consectetur Hampden" alt="Consectetur Hampden">
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">8% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip" title=""
                                                        onclick="wishlist.add('42 ');" data-placement="left"
                                                        data-original-title="Add to Wish List "><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title=""
                                                     data-placement="left" data-original-title="Quick view"><a
                                                        class="quickbox"
                                                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=42">
                                                    <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip" title=""
                                                        onclick="compare.add('42 ');" data-placement="left"
                                                        data-original-title="Add to Compare "><i
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
                                                    <span class="price-new">$110.00</span> <span class="price-old">$119.60</span>
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
                                                     class="img-responsive reg-image">
                                                <img class="img-responsive hover-image"
                                                     src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/11-85x85.jpg"
                                                     title="Exercitat Virginia" alt="Exercitat Virginia">
                                            </a>


                                            <span class="saleicon sale">Sale</span>


                                            <div class="percentsaving">11% off</div>

                                            <div class="button-group">
                                                <button class="wishlist" type="button" data-toggle="tooltip" title=""
                                                        onclick="wishlist.add('30 ');" data-placement="left"
                                                        data-original-title="Add to Wish List "><i
                                                        class="fa fa-heart"></i></button>
                                                <div class="quickview-button" data-toggle="tooltip" title=""
                                                     data-placement="left" data-original-title="Quick view"><a
                                                        class="quickbox"
                                                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=30">
                                                    <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                <button class="compare" type="button" data-toggle="tooltip" title=""
                                                        onclick="compare.add('30 ');" data-placement="left"
                                                        data-original-title="Add to Compare "><i
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
                                                    <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
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
            <h1 class="page-title">Special Offers</h1>
            <div class="category_filter">
                <div class="col-md-4 btn-list-grid">
                    <div class="btn-group">
                        <button type="button" id="grid-view" class="btn btn-default grid active" data-toggle="tooltip"
                                title="" data-original-title="Grid"><i class="fa fa-th"></i></button>
                        <button type="button" id="list-view" class="btn btn-default list" data-toggle="tooltip" title=""
                                data-original-title="List"><i class="fa fa-th-list"></i></button>
                    </div>
                </div>
                <div class="compare-total"><a
                        href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/compare"
                        id="compare-total">Product Compare (0)</a></div>
                <div class="pagination-right">
                    <div class="sort-by-wrapper">
                        <div class="col-md-2 text-right sort-by">
                            <label class="control-label" for="input-sort">Sort By:</label>
                        </div>
                        <div class="col-md-3 text-right sort">
                            <select id="input-sort" class="form-control hasCustomSelect"
                                    onchange="location = this.value;"
                                    style="-webkit-appearance: menulist-button; width: 150px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=p.sort_order&amp;order=ASC "
                                        selected="selected">Default
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=pd.name&amp;order=ASC ">
                                    Name (A - Z)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=pd.name&amp;order=DESC ">
                                    Name (Z - A)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=ps.price&amp;order=ASC ">
                                    Price (Low &gt; High)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=ps.price&amp;order=DESC ">
                                    Price (High &gt; Low)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=rating&amp;order=DESC ">
                                    Rating (Highest)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=rating&amp;order=ASC ">
                                    Rating (Lowest)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=p.model&amp;order=ASC ">
                                    Model (A - Z)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;sort=p.model&amp;order=DESC ">
                                    Model (Z - A)
                                </option>
                            </select><span class="customSelect form-control" style="display: inline-block;"><span
                                class="customSelectInner"
                                style="width: 124px; display: inline-block;">Default</span></span>
                        </div>
                    </div>
                    <div class="show-wrapper">
                        <div class="col-md-1 text-right show">
                            <label class="control-label" for="input-limit">Show:</label>
                        </div>
                        <div class="col-md-2 text-right limit">
                            <select id="input-limit" class="form-control hasCustomSelect"
                                    onchange="location = this.value;"
                                    style="-webkit-appearance: menulist-button; width: 100px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;limit=12 "
                                        selected="selected">12
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;limit=25 ">
                                    25
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;limit=50 ">
                                    50
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;limit=75 ">
                                    75
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/special&amp;limit=100 ">
                                    100
                                </option>
                            </select><span class="customSelect form-control" style="display: inline-block;"><span
                                class="customSelectInner" style="width: 74px; display: inline-block;">12</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/03-256x256.jpg"
                                         title="Commodi Consequatur" alt="Commodi Consequatur"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/04-256x256.jpg"
                                         title="Commodi Consequatur" alt="Commodi Consequatur">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">2% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('35');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=35">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('35');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('35 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=35">Commodi
                                            Consequatur</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">The standard Lorem Ipsum passage, used since the 1500
                                        Fashion has been creating well-designed colle..</p>

                                    <p class="price">
                                        <span class="price-new">$134.00</span> <span class="price-old">$136.40</span>
                                        <span class="price-tax">Ex Tax: $110.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('35', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=42">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/04-256x256.jpg"
                                         title="Consectetur Hampden" alt="Consectetur Hampden"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/10-256x256.jpg"
                                         title="Consectetur Hampden" alt="Consectetur Hampden">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">8% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('42');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=42">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('42');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('42 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=42">Consectetur
                                            Hampden</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">Housed in a new aluminum design, the display has a very thin bezel
                                        that enhances visual accuracy. Ea..</p>

                                    <p class="price">
                                        <span class="price-new">$110.00</span> <span class="price-old">$119.60</span>
                                        <span class="price-tax">Ex Tax: $90.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('42', '2 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=30">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/05-256x256.jpg"
                                         title="Exercitat Virginia" alt="Exercitat Virginia"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/11-256x256.jpg"
                                         title="Exercitat Virginia" alt="Exercitat Virginia">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">11% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('30');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=30">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('30');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('30 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=30">Exercitat
                                            Virginia</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">The standard Lorem Ipsum passage, used since the 1500
                                        Fashion has been creating well-designed colle..</p>

                                    <p class="price">
                                        <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
                                        <span class="price-tax">Ex Tax: $85.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('30', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=31">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/08-256x256.jpg"
                                         title="Laudant Doloremque" alt="Laudant Doloremque"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/13-256x256.jpg"
                                         title="Laudant Doloremque" alt="Laudant Doloremque">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">6% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('31');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=31">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('31');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('31 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=31">Laudant
                                            Doloremque</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">The D300 reacts with lightning speed, powering up in a mere 0.13
                                        seconds and shooting with an imperc..</p>

                                    <p class="price">
                                        <span class="price-new">$92.00</span> <span class="price-old">$98.00</span>
                                        <span class="price-tax">Ex Tax: $75.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('31', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=45">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/10-256x256.jpg"
                                         title="Neque Porro Quisquam" alt="Neque Porro Quisquam"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/11-256x256.jpg"
                                         title="Neque Porro Quisquam" alt="Neque Porro Quisquam">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">3% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('45');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=45">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('45');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('45 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=45">Neque
                                            Porro Quisquam</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">Latest Intel mobile architecture

                                        Powered by the most advanced mobile processors from Intel, ..</p>

                                    <p class="price">
                                        <span class="price-new">$115.00</span> <span class="price-old">$118.00</span>
                                        <span class="price-tax">Ex Tax: $115.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('45', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=41">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/11-256x256.jpg"
                                         title="Nostrud Exercitation" alt="Nostrud Exercitation"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/02-256x256.jpg"
                                         title="Nostrud Exercitation" alt="Nostrud Exercitation">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">6% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('41');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=41">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('41');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('41 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=41">Nostrud
                                            Exercitation</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">Just when you thought iMac had everything, now there´s even more.
                                        More powerful Intel Core 2 Duo pro..</p>

                                    <p class="price">
                                        <span class="price-new">$78.80</span> <span class="price-old">$83.60</span>
                                        <span class="price-tax">Ex Tax: $64.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('41', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=32">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/14-256x256.jpg"
                                         title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/05-256x256.jpg"
                                         title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">7% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('32');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=32">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('32');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('32 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=32">Reprehenderit
                                            Aliquam</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">Revolutionary multi-touch interface.
                                        iPod touch features the same multi-touch screen technology as..</p>

                                    <p class="price">
                                        <span class="price-new">$110.00</span> <span class="price-old">$118.40</span>
                                        <span class="price-tax">Ex Tax: $90.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('32', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-6">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=48">
                                    <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/15-256x256.jpg"
                                         title="Voluptates Repudiandae" alt="Voluptates Repudiandae"
                                         class="img-responsive reg-image">
                                    <img class="img-responsive hover-image"
                                         src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/06-256x256.jpg"
                                         title="Voluptates Repudiandae" alt="Voluptates Repudiandae">
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving">13% off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip" title=""
                                            onclick="wishlist.add('48');" data-placement="left"
                                            data-original-title="Add to Wish List"><i class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="" data-placement="left"
                                         data-original-title="Quick view"><a class="quickbox"
                                                                             href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/quick_view&amp;product_id=48">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title=""
                                            onclick="compare.add('48');" data-placement="left"
                                            data-original-title="Add to Compare"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title=""
                                            onclick="cart.add('48 ');" data-placement="left"
                                            data-original-title="Add to Cart "><span>Add to Cart</span></button>
                                </div>
                            </div>

                            <div class="product-details">
                                <div class="caption">

                                    <div class="rating">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <h4>
                                        <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/product&amp;product_id=48">Voluptates
                                            Repudiandae</a></h4>

                                    <div class="rating list-rate">
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                class="fa fa-star-o fa-stack-2x"></i></span>
                                    </div>

                                    <p class="desc">More room to move.

                                        With 80GB or 160GB of storage and up to 40 hours of battery life, the new..</p>

                                    <p class="price">
                                        <span class="price-new">$122.00</span> <span class="price-old">$140.00</span>
                                        <span class="price-tax">Ex Tax: $100.00</span>
                                    </p>

                                    <button type="button" class="addtocart" onclick="cart.add('48', '1 ');"><span>Add to Cart</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pagination-wrapper">
                <div class="col-sm-6 text-left page-link"></div>
                <div class="col-sm-6 text-right page-result">Showing 1 to 8 of 8 (1 Pages)</div>
            </div>
        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>
</body>
</html>
