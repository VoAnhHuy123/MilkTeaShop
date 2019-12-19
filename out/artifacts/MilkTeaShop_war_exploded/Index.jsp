<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html dir="ltr" lang="en">
<!--<![endif]-->
<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:31:41 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
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

<body class="common-home layout-1">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>

<%--<div class="wrap-breadcrumb parallax-breadcrumb">--%>
<%--    <div class="container"></div>--%>
<%--</div>--%>

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
<div class="content-top">
    <%--    <div class="container">--%>
    <div class="main-slider">
        <div id="spinner"></div>
        <div class="swiper-viewport">
            <div id="slideshow0" class="swiper-container" style="width: 100%;height: 350px;">
                <div class="swiper-wrapper">
                    <% ResultSet slider = (ResultSet) request.getAttribute("f");
                        while (slider.next()) {
                    %>
                    <div class="swiper-slide text-center"><a href="#" style="width: 100%;height: 350px">
                        <img width="100%" height="350px" src=""
                             style=" height:350px !important;background-image: url('<%= slider.getString("image")%>');background-position: center center;
                                     position: absolute;
                                     background-size: cover;"
                             alt=""
                             class="img-responsive"/>
                    </a>
                    </div>
                    <%}%>
                </div>
            </div>
            <div class="swiper-pagination slideshow0"></div>
            <div class="swiper-pager">
                <ul class="swiper-pager-button">
                    <li class="swiper-button-prev">
                        <a class="swiper-prev"></a>
                    </li>
                    <li class="swiper-button-next">
                        <a class="swiper-next"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#slideshow0').swiper({
            mode: 'horizontal',
            slidesPerView: 1,
            pagination: '.slideshow0',
            paginationClickable: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            spaceBetween: 0,
            autoplay: 5000,
            autoplayDisableOnInteraction: true,
            loop: true
        });
    </script>

    <script type="text/javascript">
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $("#spinner").fadeOut("slow");
        });
    </script>

    <%--    </div>--%>
</div>

<div class="row home_row">

    <div id="content" class="col-sm-12">
        <div id="czcategorylistblock" class="czcategory_listblock">
            <h1 class="h1 products-section-title text-uppercase"><span> Featured Categories </span></h1>
            <div class="czcategory_block container">
                <div class="category_lists">
                    <ul id="ourcategory-carousel" class="cz-carousel">
                        <%--                        ///////--%>
                        <% ResultSet future = (ResultSet) request.getAttribute("e");
                            while (future.next()) {
                        %>
                        <li class="category_item item">
                            <div class="cate_image">
                                <div class="cate-inner"><a href="#"><img src="<%=future.getString("image")%>"
                                                                         class="img-responsive" alt="category-img1.png"></a>
                                </div>
                            </div>
                            <div class="cate-details">
                                <div class="ctegory-title"><a href="#"><%=future.getString("name")%>
                                </a></div>
                            </div>
                        </li>
                        <%}%>
                    </ul>
                </div>
            </div>
        </div>
        <div id="czsubbannercmsblock" class="block czsubbanners">
            <div class="czsubbanner container">
                <div class="subbanners">
                    <div class="one-half cmssubbanner-part1">
                        <div class="subbanner-inner">
                            <div class="subbanner subbanner1"><a href="#" class="banner-anchor"><img
                                    src="image/sale/1.jpg" alt="sub-banner1" class="subbanner-image1"></a>
                                <div class="banner-detail">
                                    <div class="offer">Buy 1 Get 1 Free!</div>
                                    <div class="tittle">Weekend Offer</div>
                                    <div class="shop-button"><a href="#">Discover More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="one-half cmssubbanner-part2">
                        <div class="subbanner-inner">
                            <div class="subbanner subbanner2"><a href="#" class="banner-anchor"><img
                                    src="image/sale/2.jpg" alt="sub-banner2" class="subbanner-image2"></a>
                                <div class="banner-detail">
                                    <div class="offer">30% save</div>
                                    <div class="tittle">Awesome Sweets</div>
                                    <div class="shop-button"><a href="#">Discover More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hometab box">
            <div class="container">
                <div class="tab-head">
                    <div class="hometab-heading box-heading">New Products</div>
                    <div id="tabs" class="htabs">
                        <ul class='etabs'>
                            <li class='tab'>
                                <a href="#tab-latest">Latest</a>
                            </li>
                            <li class='tab'>
                                <a href="#tab-bestseller">Bestseller</a>
                            </li>
                            <li class='tab'>
                                <a href="#tab-special">Special</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="tab-latest" class="tab-content">
                    <div class="box">
                        <div class="box-content">


                            <div class="customNavigation">
                                <a class="fa prev fa-arrow-left">&nbsp;</a>
                                <a class="fa next fa-arrow-right">&nbsp;</a>
                            </div>
                            <div class="box-product product-carousel" id="tablatest-carousel">
                                <%--                                //////--%>
                                <% ResultSet ss = (ResultSet) request.getAttribute("b");
                                    while (ss.next()) {
                                %>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb77e.html?route=product/product&amp;product_id=48">
                                                    <img src="<%= ss.getString("image")%>"
                                                         title="Voluptates Repudiandae" alt="Voluptates Repudiandae"
                                                         class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image"
                                                         src="<%= ss.getString("image")%>"
                                                         title="Voluptates Repudiandae" alt="Voluptates Repudiandae"/>
                                                </a>
                                                <span class="saleicon sale">Sale</span>
                                                <div class="percentsaving"><%= ss.getString("sale_percent")%> off</div>
                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip"
                                                            title="Add to Wish List " onclick="wishlist.add('48 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip"
                                                         title="Quick view"><a class="quickbox"
                                                                               href="<%=Util.fullPath("DetailProduct")%>">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip"
                                                            title="Add to Compare " onclick="compare.add('48 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip"
                                                            title="Add to Cart " onclick="addToCart(1)"><span>Add to Cart</span>
                                                    </button>
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
                                                        <a href="indexb77e.html?route=product/product&amp;product_id=48"><%= ss.getString("name")%>
                                                        </a></h4>
                                                    <p class="price">
                                                        <span class="price-new"><%= ss.getString("sale_price")%><span
                                                                style="font-size: 10px"> VND</span></span> <span
                                                            class="price-old"><%= ss.getString("price")%><span
                                                            style="font-size: 10px"> VND</span></span>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>


                    </div>
                    <span class="tablatest_default_width" style="display:none; visibility:hidden"></span>
                </div>

                <div id="tab-bestseller" class="tab-content">
                    <div class="box">
                        <div class="box-content">

                            <div class="customNavigation">
                                <a class="fa prev fa-arrow-left">&nbsp;</a>
                                <a class="fa next fa-arrow-right">&nbsp;</a>
                            </div>

                            <div class="box-product product-carousel" id="tabbestseller-carousel">
                                <% ResultSet sss = (ResultSet) request.getAttribute("c");
                                    while (sss.next()) {
                                %>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexd21c.html?route=product/product&amp;product_id=47">
                                                    <img src="<%= sss.getString("image")%>"
                                                         title="Accusantium Doloremque" alt="Accusantium Doloremque"
                                                         class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image"
                                                         src="<%= sss.getString("image")%>"
                                                         title="Accusantium Doloremque" alt="Accusantium Doloremque"/>
                                                </a>


                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip"
                                                            title="Add to Wish List " onclick="wishlist.add('47 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip"
                                                         title="Quick view"><a class="quickbox"
                                                                               href="<%=Util.fullPath("DetailProduct")%>">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip"
                                                            title="Add to Compare " onclick="compare.add('47 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip"
                                                            title="Add to Cart " onclick="addToCartSmall(1)"><span>Add to Cart</span>
                                                    </button>
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
                                                        <a href="indexd21c.html?route=product/product&amp;product_id=47"><%= sss.getString("name")%>
                                                        </a></h4>

                                                    <p class="price"><%= sss.getString("price")%><span
                                                            style="font-size: 10px"> VND</span>
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>


                    </div>
                    <span class="tabbestseller_default_width" style="display:none; visibility:hidden"></span>
                </div>

                <div id="tab-special" class="tab-content">
                    <div class="box">
                        <div class="box-content">
                            <div class="customNavigation">
                                <a class="fa prev fa-arrow-left">&nbsp;</a>
                                <a class="fa next fa-arrow-right">&nbsp;</a>
                            </div>
                            <div class="box-product product-carousel" id="tabspecial-carousel">
                                <% ResultSet ssss = (ResultSet) request.getAttribute("d");
                                    while (ssss.next()) {
                                %>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexfac8.html?route=product/product&amp;product_id=35">
                                                    <img src="<%= ssss.getString("image")%>"
                                                         title="Commodi Consequatur" alt="Commodi Consequatur"
                                                         class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image"
                                                         src="<%= ssss.getString("image")%>"
                                                         title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving"><%= ssss.getString("sale_percent")%>off
                                                </div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip"
                                                            title="Add to Wish List " onclick="wishlist.add('35 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip"
                                                         title="Quick view"><a class="quickbox"
                                                                               href="<%=Util.fullPath("DetailProduct")%>">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip"
                                                            title="Add to Compare " onclick="compare.add('35 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip"
                                                            title="Add to Cart " onclick="cart.add('35 ');"><span>Add to Cart</span>
                                                    </button>
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
                                                        <a href="indexfac8.html?route=product/product&amp;product_id=35"><%= ssss.getString("name")%>
                                                        </a></h4>


                                                    <p class="price">
                                                        <span class="price-new"><%= ssss.getString("price")%><span
                                                                style="font-size: 10px"> VND</span></span> <span
                                                            class="price-old"><%= ssss.getString("sale_price")%></span>
                                                        <span class="price-tax">Ex Tax: $110.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>

                    </div>
                    <span class="tabspecial_default_width" style="display:none; visibility:hidden"></span>
                </div>

            </div>
        </div>

        <script type="text/javascript">
            $('#tabs a').tabs();
        </script>
        <div id="czbannercmsblock" class="block czbanners">
            <div class="container">
                <div class="cmsbanners">
                    <div class="cmsbanner cmsbanner1">
                        <div class="cmsbanner-inner"><a href="#" class="banner-anchor"><img
                                src="image/slider/4.jpg" alt="cms-banner1" class="banner-image1"></a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box featured">
            <div class="container">
                <div class="feature-wrapper">
                    <div class="box-head">
                        <div class="box-heading">Featured Products</div>
                    </div>

                    <div class="box-content">
                        <div class="customNavigation">
                            <a class="fa prev fa-arrow-left czfeature_prev">&nbsp;</a>
                            <a class="fa next fa-arrow-right czfeature_next">&nbsp;</a>
                        </div>

                        <div class="box-product owl-carousel czfeature-carousel" id="featured-carousel">
                            <% ResultSet futured = (ResultSet) request.getAttribute("g");
                                while (futured.next()) {
                            %>
                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexfac8.html?route=product/product&amp;product_id=35">
                                                    <img src="<%= futured.getString("image")%>"
                                                         title="Commodi Consequatur" alt="Commodi Consequatur"
                                                         class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image"
                                                         src="<%= futured.getString("image")%>"
                                                         title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                                </a>
                                                <span class="saleicon sale">Sale</span>
                                                <div class="percentsaving">2% off</div>
                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip"
                                                                title="Add to Wish List "
                                                                onclick="wishlist.add('35 ');"><i
                                                                class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip"
                                                             title="Quick view"><a class="quickbox"
                                                                                   href="<%=Util.fullPath("DetailProduct")%>">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip"
                                                                title="Add to Compare " onclick="compare.add('35 ');"><i
                                                                class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip"
                                                                title="Add to Cart " onclick="cart.add('35 ');"><span>Add to Cart</span>
                                                        </button>
                                                    </div>
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
                                                        <a href="indexfac8.html?route=product/product&amp;product_id=35"><%= futured.getString("name")%>
                                                        </a></h4>
                                                    <p class="price">
                                                        <span class="price-new"><%= futured.getString("sale_price")%></span>
                                                        <span class="price-old"><%= futured.getString("price")%></span>
                                                        <span class="price-tax">Ex Tax: $110.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart" onclick="cart.add('35 ');">
                                                        <span>Add to Cart</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbb02.html?route=product/product&amp;product_id=42">
                                                    <img src="<%= futured.getString("images")%>"
                                                         title="Consectetur Hampden" alt="Consectetur Hampden"
                                                         class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image"
                                                         src="<%= futured.getString("images")%>"
                                                         title="Consectetur Hampden" alt="Consectetur Hampden"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">8% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip"
                                                                title="Add to Wish List "
                                                                onclick="wishlist.add('42 ');"><i
                                                                class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip"
                                                             title="Quick view"><a class="quickbox"
                                                                                   href="<%=Util.fullPath("DetailProduct")%>">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip"
                                                                title="Add to Compare " onclick="compare.add('42 ');"><i
                                                                class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip"
                                                                title="Add to Cart " onclick="cart.add('42 ');"><span>Add to Cart</span>
                                                        </button>
                                                    </div>
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
                                                        <a href="indexbb02.html?route=product/product&amp;product_id=42"><%= futured.getString("names")%>
                                                        </a></h4>
                                                    <p class="price">
                                                        <span class="price-new"><%= futured.getString("sale_price")%></span>
                                                        <span class="price-old"><%= futured.getString("price")%></span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart" onclick="cart.add('42 ');">
                                                        <span>Add to Cart</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ul>
                            </li>
                            <%}%>
                        </div>
                    </div>

                </div>
                <div class="featuredright">

                </div>
            </div>
        </div>
        <script type="text/javascript"><!--

        $(document).ready(function () {
            $('#featured-carousel').owlCarousel({
                items: 3,
                singleItem: false,
                navigation: false,
                pagination: false,
                itemsDesktop: [1199, 2],
                itemsDesktopSmall: [991, 2],
                itemsTablet: [679, 1],
                itemsMobile: [319, 1]
            });
            // Custom Navigation Events
            $(".czfeature_next").click(function () {
                $('#featured-carousel').trigger('owl.next');
            })
            $(".czfeature_prev").click(function () {
                $('#featured-carousel').trigger('owl.prev');
            });
        });
        --></script>
        <script type="text/javascript"><!--

        $(document).ready(function () {
            $('.blogcarousel').owlCarousel({
                items: 3,
                singleItem: false,
                navigation: false,
                pagination: false,
                itemsDesktop: [1199, 3],
                itemsDesktopSmall: [991, 2],
                itemsTablet: [575, 1]
            });
            // Custom Navigation Events
            $(".czblog_next").click(function () {
                $('.blogcarousel').trigger('owl.next');
            })
            $(".czblog_prev").click(function () {
                $('.blogcarousel').trigger('owl.prev');
            });
        });
        --></script>
    </div>
</div>

<span class="testimonial_default_width" style="display: none; visibility: hidden;"></span>

<script type="text/javascript">
    $(document).ready(function () {
        $('#ourcategory-carousel').owlCarousel({
            items: 7,
            singleItem: false,
            navigation: true,
            pagination: false,
            autoPlay: true,
            itemsDesktop: [1199, 5],
            itemsDesktopSmall: [991, 3],
            itemsTablet: [580, 2],
            itemsMobile: [400, 1]
        });

        $('#testimonial-carousel').owlCarousel({
            singleItem: true,
            navigation: false,
            pagination: true
        });

        $('.brand-carousel').owlCarousel({
            items: 5,
            itemsDesktop: [1199, 4],
            itemsDesktopSmall: [991, 3],
            itemsTablet: [480, 2],
            itemsMobile: [320, 1],
            singleItem: false,
            navigation: false,
            pagination: false,
            autoPlay: true
        });
    });
</script>

<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body>
<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:33:03 GMT -->
</html>
