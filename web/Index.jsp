<%@ page contentType="text/html;charset=UTF-8" language="java" %>﻿
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->

<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:31:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Fodder Restaurant Store</title>
    <base  />
    <meta name="description" content="Fodder Restaurant Store Opencart Responsive Theme is designed for Food, Restaurant, Cake, Vegetables, Pizza, Bakery, Grocery, Wine and multi purpose stores. This Theme is looking good with colors combination and professional look.
" />
    <meta name="keywords" content="Food, Restaurant, Cake, Vegetables, Pizza, Bakery, Grocery, Wine" />

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Sintony:400,700" rel="stylesheet">
    <link href="catalog/view/theme/Fodder/stylesheet/stylesheet.css" rel="stylesheet" />

    <!-- Codezeel www.codezeel.com - Start -->
    <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/magnific/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/carousel.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/custom.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/lightbox.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/Fodder/stylesheet/codezeel/animate.css" />


    <link href="style.html" type="text/css" rel="style.rel" media="style.media" />
    <link href="style.html" type="text/css" rel="style.rel" media="style.media" />


    <link href="catalog/view/javascript/jquery/swiper/css/swiper.min.css" type="text/css" rel="stylesheet" media="screen" />
    <link href="catalog/view/javascript/jquery/swiper/css/opencart.css" type="text/css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/jquery/swiper/js/swiper.jquery.js" type="text/javascript"></script>

    <link href="image/catalog/cart.png" rel="icon" />
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
</head>


<body class="common-home layout-1">
<%@ include file="Layout/header.jsp" %>

<div class="wrap-breadcrumb parallax-breadcrumb">
    <div class="container"></div>
</div>

<!-- ======= Quick view JS ========= -->
<script>

    function quickbox(){
        if ($(window).width() > 767) {
            $('.quickview-button').magnificPopup({
                type:'iframe',
                delegate: 'a',
                preloader: true,
                tLoading: 'Loading image #%curr%...',
            });
        }
    }
    jQuery(document).ready(function() {quickbox();});
    jQuery(window).resize(function() {quickbox();});

</script>
<div class="content-top">
    <div class="container">
        <div class="main-slider">
            <div id="spinner"></div>
            <div class="swiper-viewport">
                <div id="slideshow0" class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide text-center"><a href="#"><img src="image/cache/catalog/main-banner-1-1400x535.jpg" alt="Mainbanner1" class="img-responsive" /></a></div>
                        <div class="swiper-slide text-center"><a href="#"><img src="image/cache/catalog/main-banner-2-1400x535.jpg" alt="Mainbanner2" class="img-responsive" /></a></div>
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
        <script type="text/javascript"><!--
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
        --></script>

        <script type="text/javascript">
            // Can also be used with $(document).ready()
            $(window).load(function() {
                $("#spinner").fadeOut("slow");
            });
        </script>

    </div>
</div>

<div class="row home_row">

    <div id="content" class="col-sm-12">  <div id="czcategorylistblock" class="czcategory_listblock">
        <h1 class="h1 products-section-title text-uppercase"><span> Featured Categories </span></h1>
        <div class="czcategory_block container">
            <div class="category_lists">
                <ul id="ourcategory-carousel" class="cz-carousel">
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img1.png" class="img-responsive" alt="category-img1.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">french fries</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img2.png" class="img-responsive" alt="category-img2.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">burger</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img3.png" class="img-responsive" alt="category-img3.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Cup Cake</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img4.png" class="img-responsive" alt="category-img4.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Tasty Porridge</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img5.png" class="img-responsive" alt="category-img5.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Eggs</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img6.png" class="img-responsive" alt="category-img6.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Cheese</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img7.png" class="img-responsive" alt="category-img7.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Fried Chicken</a></div>
                        </div>
                    </li>
                    <li class="category_item item">
                        <div class="cate_image">
                            <div class="cate-inner"><a href="#"><img src="image/catalog/categorylist-img8.png" class="img-responsive" alt="category-img8.png"></a></div>
                        </div>
                        <div class="cate-details">
                            <div class="ctegory-title"><a href="#">Beer</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
        <div id="czsubbannercmsblock" class="block czsubbanners">
            <div class="czsubbanner container">
                <div class="subbanners">
                    <div class="one-half cmssubbanner-part1">
                        <div class="subbanner-inner">
                            <div class="subbanner subbanner1"><a href="#" class="banner-anchor"><img src="image/catalog/sub-banner-1.jpg" alt="sub-banner1" class="subbanner-image1"></a>
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
                            <div class="subbanner subbanner2"><a href="#" class="banner-anchor"><img src="image/catalog/sub-banner-2.jpg" alt="sub-banner2" class="subbanner-image2"></a>
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
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb77e.html?route=product/product&amp;product_id=48">
                                                    <img src="image/cache/catalog/15-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/06-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">13% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('48 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexdd37.html?route=product/quick_view&amp;product_id=48">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('48 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('48 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb77e.html?route=product/product&amp;product_id=48">Voluptates Repudiandae </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$122.00</span> <span class="price-old">$140.00</span>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexd21c.html?route=product/product&amp;product_id=47">
                                                    <img src="image/cache/catalog/01-256x256.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('47 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index7f5a.html?route=product/quick_view&amp;product_id=47">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('47 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('47 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexd21c.html?route=product/product&amp;product_id=47">Accusantium Doloremque </a></h4>



                                                    <p class="price">
                                                        $104.00
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index531d.html?route=product/product&amp;product_id=45">
                                                    <img src="image/cache/catalog/10-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">3% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('45 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index63bb.html?route=product/quick_view&amp;product_id=45">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('45 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('45 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index531d.html?route=product/product&amp;product_id=45">Neque Porro Quisquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$115.00</span> <span class="price-old">$118.00</span>
                                                        <span class="price-tax">Ex Tax: $115.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb8ca.html?route=product/product&amp;product_id=43">
                                                    <img src="image/cache/catalog/02-256x256.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/07-256x256.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('43 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexff8a.html?route=product/quick_view&amp;product_id=43">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('43 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('43 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb8ca.html?route=product/product&amp;product_id=43">Aliquam Quaerat </a></h4>



                                                    <p class="price">
                                                        $108.80
                                                        <span class="price-tax">Ex Tax: $89.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbb02.html?route=product/product&amp;product_id=42">
                                                    <img src="image/cache/catalog/04-256x256.jpg" title="Consectetur Hampden" alt="Consectetur Hampden" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/10-256x256.jpg" title="Consectetur Hampden" alt="Consectetur Hampden"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">8% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('42 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index6d6f.html?route=product/quick_view&amp;product_id=42">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('42 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('42 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexbb02.html?route=product/product&amp;product_id=42">Consectetur Hampden </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$119.60</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexcae8.html?route=product/product&amp;product_id=41">
                                                    <img src="image/cache/catalog/11-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/02-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('41 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index059b.html?route=product/quick_view&amp;product_id=41">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('41 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('41 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexcae8.html?route=product/product&amp;product_id=41">Nostrud Exercitation </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$78.80</span> <span class="price-old">$83.60</span>
                                                        <span class="price-tax">Ex Tax: $64.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index9144.html?route=product/product&amp;product_id=40">
                                                    <img src="image/cache/catalog/13-256x256.jpg" title="Praesentium Voluptatum" alt="Praesentium Voluptatum" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/04-256x256.jpg" title="Praesentium Voluptatum" alt="Praesentium Voluptatum"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('40 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index9aba.html?route=product/quick_view&amp;product_id=40">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('40 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('40 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index9144.html?route=product/product&amp;product_id=40">Praesentium Voluptatum </a></h4>



                                                    <p class="price">
                                                        $128.00
                                                        <span class="price-tax">Ex Tax: $105.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index5e0b.html?route=product/product&amp;product_id=36">
                                                    <img src="image/cache/catalog/09-256x256.jpg" title="Necessitatibus" alt="Necessitatibus" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/15-256x256.jpg" title="Necessitatibus" alt="Necessitatibus"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('36 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index0d3e.html?route=product/quick_view&amp;product_id=36">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('36 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('36 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="index5e0b.html?route=product/product&amp;product_id=36">Necessitatibus </a></h4>



                                                    <p class="price">
                                                        $119.60
                                                        <span class="price-tax">Ex Tax: $98.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexfac8.html?route=product/product&amp;product_id=35">
                                                    <img src="image/cache/catalog/03-256x256.jpg" title="Commodi Consequatur" alt="Commodi Consequatur" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/04-256x256.jpg" title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">2% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('35 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index0a97.html?route=product/quick_view&amp;product_id=35">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('35 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('35 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexfac8.html?route=product/product&amp;product_id=35">Commodi Consequatur </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$134.00</span> <span class="price-old">$136.40</span>
                                                        <span class="price-tax">Ex Tax: $110.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexc21e.html?route=product/product&amp;product_id=34">
                                                    <img src="image/cache/catalog/12-256x256.jpg" title="Occasion Praesentium" alt="Occasion Praesentium" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/02-256x256.jpg" title="Occasion Praesentium" alt="Occasion Praesentium"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('34 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexa341.html?route=product/quick_view&amp;product_id=34">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('34 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('34 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexc21e.html?route=product/product&amp;product_id=34">Occasion Praesentium </a></h4>



                                                    <p class="price">
                                                        $105.20
                                                        <span class="price-tax">Ex Tax: $86.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexa17e.html?route=product/product&amp;product_id=32">
                                                    <img src="image/cache/catalog/14-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">7% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('32 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexcc95.html?route=product/quick_view&amp;product_id=32">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('32 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('32 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexa17e.html?route=product/product&amp;product_id=32">Reprehenderit Aliquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$118.40</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbfcf.html?route=product/product&amp;product_id=31">
                                                    <img src="image/cache/catalog/08-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/13-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('31 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index73c4.html?route=product/quick_view&amp;product_id=31">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('31 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('31 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexbfcf.html?route=product/product&amp;product_id=31">Laudant Doloremque </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$92.00</span> <span class="price-old">$98.00</span>
                                                        <span class="price-tax">Ex Tax: $75.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexf073.html?route=product/product&amp;product_id=30">
                                                    <img src="image/cache/catalog/05-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">11% off</div>



                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('30 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexeca1.html?route=product/quick_view&amp;product_id=30">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('30 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('30 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexf073.html?route=product/product&amp;product_id=30">Exercitat Virginia </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index0f47.html?route=product/product&amp;product_id=29">
                                                    <img src="image/cache/catalog/06-256x256.jpg" title="Laborum Eveniet" alt="Laborum Eveniet" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Laborum Eveniet" alt="Laborum Eveniet"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('29 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexf72e.html?route=product/quick_view&amp;product_id=29">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('29 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('29 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="index0f47.html?route=product/product&amp;product_id=29">Laborum Eveniet </a></h4>



                                                    <p class="price">
                                                        $97.99
                                                        <span class="price-tax">Ex Tax: $79.99</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index6320.html?route=product/product&amp;product_id=28">
                                                    <img src="image/cache/catalog/14-256x256.jpg" title="Voluptas Assumenda" alt="Voluptas Assumenda" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Voluptas Assumenda" alt="Voluptas Assumenda"/>
                                                </a>






                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('28 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index097a.html?route=product/quick_view&amp;product_id=28">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('28 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('28 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index6320.html?route=product/product&amp;product_id=28">Voluptas Assumenda </a></h4>



                                                    <p class="price">
                                                        $122.00
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexd21c.html?route=product/product&amp;product_id=47">
                                                    <img src="image/cache/catalog/01-256x256.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque"/>
                                                </a>




                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('47 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index7f5a.html?route=product/quick_view&amp;product_id=47">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('47 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('47 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexd21c.html?route=product/product&amp;product_id=47">Accusantium Doloremque </a></h4>



                                                    <p class="price">
                                                        $104.00
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index9144.html?route=product/product&amp;product_id=40">
                                                    <img src="image/cache/catalog/13-256x256.jpg" title="Praesentium Voluptatum" alt="Praesentium Voluptatum" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/04-256x256.jpg" title="Praesentium Voluptatum" alt="Praesentium Voluptatum"/>
                                                </a>




                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('40 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index9aba.html?route=product/quick_view&amp;product_id=40">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('40 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('40 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index9144.html?route=product/product&amp;product_id=40">Praesentium Voluptatum </a></h4>



                                                    <p class="price">
                                                        $128.00
                                                        <span class="price-tax">Ex Tax: $105.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index531d.html?route=product/product&amp;product_id=45">
                                                    <img src="image/cache/catalog/10-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">3% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('45 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index63bb.html?route=product/quick_view&amp;product_id=45">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('45 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('45 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index531d.html?route=product/product&amp;product_id=45">Neque Porro Quisquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$115.00</span> <span class="price-old">$118.00</span>
                                                        <span class="price-tax">Ex Tax: $115.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb8ca.html?route=product/product&amp;product_id=43">
                                                    <img src="image/cache/catalog/02-256x256.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/07-256x256.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat"/>
                                                </a>




                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('43 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexff8a.html?route=product/quick_view&amp;product_id=43">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('43 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('43 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb8ca.html?route=product/product&amp;product_id=43">Aliquam Quaerat </a></h4>



                                                    <p class="price">
                                                        $108.80
                                                        <span class="price-tax">Ex Tax: $89.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb77e.html?route=product/product&amp;product_id=48">
                                                    <img src="image/cache/catalog/15-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/06-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">13% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('48 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexdd37.html?route=product/quick_view&amp;product_id=48">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('48 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('48 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb77e.html?route=product/product&amp;product_id=48">Voluptates Repudiandae </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$122.00</span> <span class="price-old">$140.00</span>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexcae8.html?route=product/product&amp;product_id=41">
                                                    <img src="image/cache/catalog/11-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/02-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('41 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index059b.html?route=product/quick_view&amp;product_id=41">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('41 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('41 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexcae8.html?route=product/product&amp;product_id=41">Nostrud Exercitation </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$78.80</span> <span class="price-old">$83.60</span>
                                                        <span class="price-tax">Ex Tax: $64.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexa17e.html?route=product/product&amp;product_id=32">
                                                    <img src="image/cache/catalog/14-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">7% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('32 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexcc95.html?route=product/quick_view&amp;product_id=32">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('32 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('32 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexa17e.html?route=product/product&amp;product_id=32">Reprehenderit Aliquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$118.40</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index0f47.html?route=product/product&amp;product_id=29">
                                                    <img src="image/cache/catalog/06-256x256.jpg" title="Laborum Eveniet" alt="Laborum Eveniet" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Laborum Eveniet" alt="Laborum Eveniet"/>
                                                </a>




                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('29 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexf72e.html?route=product/quick_view&amp;product_id=29">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('29 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('29 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="index0f47.html?route=product/product&amp;product_id=29">Laborum Eveniet </a></h4>



                                                    <p class="price">
                                                        $97.99
                                                        <span class="price-tax">Ex Tax: $79.99</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index6320.html?route=product/product&amp;product_id=28">
                                                    <img src="image/cache/catalog/14-256x256.jpg" title="Voluptas Assumenda" alt="Voluptas Assumenda" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Voluptas Assumenda" alt="Voluptas Assumenda"/>
                                                </a>




                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('28 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index097a.html?route=product/quick_view&amp;product_id=28">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('28 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('28 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index6320.html?route=product/product&amp;product_id=28">Voluptas Assumenda </a></h4>



                                                    <p class="price">
                                                        $122.00
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbfcf.html?route=product/product&amp;product_id=31">
                                                    <img src="image/cache/catalog/08-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/13-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('31 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index73c4.html?route=product/quick_view&amp;product_id=31">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('31 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('31 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>

                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexbfcf.html?route=product/product&amp;product_id=31">Laudant Doloremque </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$92.00</span> <span class="price-old">$98.00</span>
                                                        <span class="price-tax">Ex Tax: $75.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexf073.html?route=product/product&amp;product_id=30">
                                                    <img src="image/cache/catalog/05-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">11% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('30 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexeca1.html?route=product/quick_view&amp;product_id=30">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('30 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('30 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexf073.html?route=product/product&amp;product_id=30">Exercitat Virginia </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexfac8.html?route=product/product&amp;product_id=35">
                                                    <img src="image/cache/catalog/03-256x256.jpg" title="Commodi Consequatur" alt="Commodi Consequatur" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/04-256x256.jpg" title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">2% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('35 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index0a97.html?route=product/quick_view&amp;product_id=35">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('35 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('35 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexfac8.html?route=product/product&amp;product_id=35">Commodi Consequatur </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$134.00</span> <span class="price-old">$136.40</span>
                                                        <span class="price-tax">Ex Tax: $110.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbb02.html?route=product/product&amp;product_id=42">
                                                    <img src="image/cache/catalog/04-256x256.jpg" title="Consectetur Hampden" alt="Consectetur Hampden" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/10-256x256.jpg" title="Consectetur Hampden" alt="Consectetur Hampden"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">8% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('42 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index6d6f.html?route=product/quick_view&amp;product_id=42">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('42 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('42 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexbb02.html?route=product/product&amp;product_id=42">Consectetur Hampden </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$119.60</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexf073.html?route=product/product&amp;product_id=30">
                                                    <img src="image/cache/catalog/05-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Exercitat Virginia" alt="Exercitat Virginia"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">11% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('30 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexeca1.html?route=product/quick_view&amp;product_id=30">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('30 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('30 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexf073.html?route=product/product&amp;product_id=30">Exercitat Virginia </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbfcf.html?route=product/product&amp;product_id=31">
                                                    <img src="image/cache/catalog/08-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/13-256x256.jpg" title="Laudant Doloremque" alt="Laudant Doloremque"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('31 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index73c4.html?route=product/quick_view&amp;product_id=31">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('31 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('31 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexbfcf.html?route=product/product&amp;product_id=31">Laudant Doloremque </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$92.00</span> <span class="price-old">$98.00</span>
                                                        <span class="price-tax">Ex Tax: $75.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index531d.html?route=product/product&amp;product_id=45">
                                                    <img src="image/cache/catalog/10-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-256x256.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">3% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('45 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index63bb.html?route=product/quick_view&amp;product_id=45">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('45 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('45 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="index531d.html?route=product/product&amp;product_id=45">Neque Porro Quisquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$115.00</span> <span class="price-old">$118.00</span>
                                                        <span class="price-tax">Ex Tax: $115.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexcae8.html?route=product/product&amp;product_id=41">
                                                    <img src="image/cache/catalog/11-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/02-256x256.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('41 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index059b.html?route=product/quick_view&amp;product_id=41">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('41 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('41 ');"><span>Add to Cart</span> </button>
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

                                                    <h4><a href="indexcae8.html?route=product/product&amp;product_id=41">Nostrud Exercitation </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$78.80</span> <span class="price-old">$83.60</span>
                                                        <span class="price-tax">Ex Tax: $64.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexa17e.html?route=product/product&amp;product_id=32">
                                                    <img src="image/cache/catalog/14-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-256x256.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">7% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('32 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexcc95.html?route=product/quick_view&amp;product_id=32">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('32 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('32 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexa17e.html?route=product/product&amp;product_id=32">Reprehenderit Aliquam </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$118.40</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="slider-item">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb77e.html?route=product/product&amp;product_id=48">
                                                    <img src="image/cache/catalog/15-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/06-256x256.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>

                                                <div class="percentsaving">13% off</div>

                                                <div class="button-group">
                                                    <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('48 ');">
                                                        <i class="fa fa-heart"></i></button>
                                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexdd37.html?route=product/quick_view&amp;product_id=48">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                    <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('48 ');">
                                                        <i class="fa fa-exchange"></i></button>
                                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('48 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">

                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb77e.html?route=product/product&amp;product_id=48">Voluptates Repudiandae </a></h4>



                                                    <p class="price">
                                                        <span class="price-new">$122.00</span> <span class="price-old">$140.00</span>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <span class="tabspecial_default_width" style="display:none; visibility:hidden"></span>
                </div>

            </div></div>

        <script type="text/javascript">
            $('#tabs a').tabs();
        </script>
        <div id="czbannercmsblock" class="block czbanners">
            <div class="container">
                <div class="cmsbanners">
                    <div class="cmsbanner cmsbanner1">
                        <div class="cmsbanner-inner"><a href="#" class="banner-anchor"><img src="image/catalog/cms-banner-1.jpg" alt="cms-banner1" class="banner-image1"></a></div>
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

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexfac8.html?route=product/product&amp;product_id=35">
                                                    <img src="image/cache/catalog/03-170x170.jpg" title="Commodi Consequatur" alt="Commodi Consequatur" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/04-170x170.jpg" title="Commodi Consequatur" alt="Commodi Consequatur"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">2% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('35 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index0a97.html?route=product/quick_view&amp;product_id=35">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('35 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('35 ');"><span>Add to Cart</span> </button>
                                                    </div>
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

                                                    <h4><a href="indexfac8.html?route=product/product&amp;product_id=35">Commodi Consequatur </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$134.00</span> <span class="price-old">$136.40</span>
                                                        <span class="price-tax">Ex Tax: $110.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('35 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbb02.html?route=product/product&amp;product_id=42">
                                                    <img src="image/cache/catalog/04-170x170.jpg" title="Consectetur Hampden" alt="Consectetur Hampden" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/10-170x170.jpg" title="Consectetur Hampden" alt="Consectetur Hampden"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">8% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('42 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index6d6f.html?route=product/quick_view&amp;product_id=42">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('42 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('42 ');"><span>Add to Cart</span> </button>
                                                    </div>
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

                                                    <h4><a href="indexbb02.html?route=product/product&amp;product_id=42">Consectetur Hampden </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$119.60</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('42 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb8ca.html?route=product/product&amp;product_id=43">
                                                    <img src="image/cache/catalog/02-170x170.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/07-170x170.jpg" title="Aliquam Quaerat" alt="Aliquam Quaerat"/>
                                                </a>




                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('43 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexff8a.html?route=product/quick_view&amp;product_id=43">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('43 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('43 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb8ca.html?route=product/product&amp;product_id=43">Aliquam Quaerat </a></h4>
                                                    <p class="price">
                                                        $108.80
                                                        <span class="price-tax">Ex Tax: $89.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('43 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexd21c.html?route=product/product&amp;product_id=47">
                                                    <img src="image/cache/catalog/01-170x170.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-170x170.jpg" title="Accusantium Doloremque" alt="Accusantium Doloremque"/>
                                                </a>




                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('47 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index7f5a.html?route=product/quick_view&amp;product_id=47">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('47 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('47 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexd21c.html?route=product/product&amp;product_id=47">Accusantium Doloremque </a></h4>
                                                    <p class="price">
                                                        $104.00
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('47 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexf073.html?route=product/product&amp;product_id=30">
                                                    <img src="image/cache/catalog/05-170x170.jpg" title="Exercitat Virginia" alt="Exercitat Virginia" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-170x170.jpg" title="Exercitat Virginia" alt="Exercitat Virginia"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">11% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('30 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexeca1.html?route=product/quick_view&amp;product_id=30">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('30 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('30 ');"><span>Add to Cart</span> </button>
                                                    </div>
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

                                                    <h4><a href="indexf073.html?route=product/product&amp;product_id=30">Exercitat Virginia </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$104.00</span> <span class="price-old">$116.00</span>
                                                        <span class="price-tax">Ex Tax: $85.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('30 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexbfcf.html?route=product/product&amp;product_id=31">
                                                    <img src="image/cache/catalog/08-170x170.jpg" title="Laudant Doloremque" alt="Laudant Doloremque" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/13-170x170.jpg" title="Laudant Doloremque" alt="Laudant Doloremque"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('31 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index73c4.html?route=product/quick_view&amp;product_id=31">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('31 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('31 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexbfcf.html?route=product/product&amp;product_id=31">Laudant Doloremque </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$92.00</span> <span class="price-old">$98.00</span>
                                                        <span class="price-tax">Ex Tax: $75.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('31 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index0f47.html?route=product/product&amp;product_id=29">
                                                    <img src="image/cache/catalog/06-170x170.jpg" title="Laborum Eveniet" alt="Laborum Eveniet" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-170x170.jpg" title="Laborum Eveniet" alt="Laborum Eveniet"/>
                                                </a>




                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('29 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexf72e.html?route=product/quick_view&amp;product_id=29">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('29 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('29 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="index0f47.html?route=product/product&amp;product_id=29">Laborum Eveniet </a></h4>
                                                    <p class="price">
                                                        $97.99
                                                        <span class="price-tax">Ex Tax: $79.99</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('29 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexcae8.html?route=product/product&amp;product_id=41">
                                                    <img src="image/cache/catalog/11-170x170.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/02-170x170.jpg" title="Nostrud Exercitation" alt="Nostrud Exercitation"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">6% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('41 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index059b.html?route=product/quick_view&amp;product_id=41">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('41 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('41 ');"><span>Add to Cart</span> </button>
                                                    </div>
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

                                                    <h4><a href="indexcae8.html?route=product/product&amp;product_id=41">Nostrud Exercitation </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$78.80</span> <span class="price-old">$83.60</span>
                                                        <span class="price-tax">Ex Tax: $64.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('41 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index531d.html?route=product/product&amp;product_id=45">
                                                    <img src="image/cache/catalog/10-170x170.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/11-170x170.jpg" title="Neque Porro Quisquam" alt="Neque Porro Quisquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">3% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('45 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index63bb.html?route=product/quick_view&amp;product_id=45">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('45 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('45 ');"><span>Add to Cart</span> </button>
                                                    </div>
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

                                                    <h4><a href="index531d.html?route=product/product&amp;product_id=45">Neque Porro Quisquam </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$115.00</span> <span class="price-old">$118.00</span>
                                                        <span class="price-tax">Ex Tax: $115.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('45 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="index5e0b.html?route=product/product&amp;product_id=36">
                                                    <img src="image/cache/catalog/09-170x170.jpg" title="Necessitatibus" alt="Necessitatibus" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/15-170x170.jpg" title="Necessitatibus" alt="Necessitatibus"/>
                                                </a>




                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('36 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="index0d3e.html?route=product/quick_view&amp;product_id=36">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('36 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('36 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="index5e0b.html?route=product/product&amp;product_id=36">Necessitatibus </a></h4>
                                                    <p class="price">
                                                        $119.60
                                                        <span class="price-tax">Ex Tax: $98.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('36 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>

                            <li class="double-slideitem product-items product-block">
                                <ul>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexa17e.html?route=product/product&amp;product_id=32">
                                                    <img src="image/cache/catalog/14-170x170.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/05-170x170.jpg" title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">7% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('32 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexcc95.html?route=product/quick_view&amp;product_id=32">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('32 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('32 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexa17e.html?route=product/product&amp;product_id=32">Reprehenderit Aliquam </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$110.00</span> <span class="price-old">$118.40</span>
                                                        <span class="price-tax">Ex Tax: $90.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('32 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="indexb77e.html?route=product/product&amp;product_id=48">
                                                    <img src="image/cache/catalog/15-170x170.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae" class="img-responsive reg-image"/>
                                                    <img class="img-responsive hover-image" src="image/cache/catalog/06-170x170.jpg" title="Voluptates Repudiandae" alt="Voluptates Repudiandae"/>
                                                </a>


                                                <span class="saleicon sale">Sale</span>


                                                <div class="percentsaving">13% off</div>

                                                <div class="button-group">
                                                    <div class="top-btn">
                                                        <button class="wishlist" type="button" data-toggle="tooltip" title="Add to Wish List " onclick="wishlist.add('48 ');"><i class="fa fa-heart"></i></button>
                                                        <div class="quickview-button" data-toggle="tooltip" title="Quick view"> <a class="quickbox" href="indexdd37.html?route=product/quick_view&amp;product_id=48">
                                                            <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                                        <button class="compare" type="button" data-toggle="tooltip" title="Add to Compare " onclick="compare.add('48 ');"><i class="fa fa-exchange"></i></button>
                                                        <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart " onclick="cart.add('48 ');"><span>Add to Cart</span> </button>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-details">
                                                <div class="caption">




                                                    <div class="rating">
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                    </div>

                                                    <h4><a href="indexb77e.html?route=product/product&amp;product_id=48">Voluptates Repudiandae </a></h4>
                                                    <p class="price">
                                                        <span class="price-new">$122.00</span> <span class="price-old">$140.00</span>
                                                        <span class="price-tax">Ex Tax: $100.00</span>
                                                    </p>

                                                    <button type="button" class="addtocart"  onclick="cart.add('48 ');"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </ul>
                            </li>
                        </div>
                    </div>

                </div>
                <div class="featuredright">

                </div>
            </div>
        </div>

        <script type="text/javascript"><!--

        $(document).ready(function(){
            $('#featured-carousel').owlCarousel({
                items: 3,
                singleItem: false,
                navigation: false,
                pagination: false,
                itemsDesktop : [1199,2],
                itemsDesktopSmall :	[991,2],
                itemsTablet :	[679,1],
                itemsMobile : [319,1]
            });
            // Custom Navigation Events
            $(".czfeature_next").click(function(){
                $('#featured-carousel').trigger('owl.next');
            })
            $(".czfeature_prev").click(function(){
                $('#featured-carousel').trigger('owl.prev');
            });
        });
        --></script>
        <div class="box blogs">
            <div class="container">

                <div class="box-head">
                    <div class="box-heading">Latest Blog</div>
                </div>
                <div class="box-content">
                    <div class="customNavigation">
                        <a class="fa prev czblog_prev"></a>
                        <a class="fa next czblog_next"></a>
                    </div>

                    <div class="box-product  owl-carousel blogcarousel " id="blog-carousel">

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-6-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-6-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="index2c9f.html?route=information/blogger&amp;blogger_id=6"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="index2c9f.html?route=information/blogger&amp;blogger_id=6"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="index2c9f.html?route=information/blogger&amp;blogger_id=6">Necessitatibus Saepe Eveniet</a> </h4>
                                        <div class="blog-desc"> The standard Lorem Ipsum passage, used since the 1500s"Lorem ipsum dolor sit amet, consectetur adipi...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-5-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-5-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="indexed5d.html?route=information/blogger&amp;blogger_id=5"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="indexed5d.html?route=information/blogger&amp;blogger_id=5"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="indexed5d.html?route=information/blogger&amp;blogger_id=5">Quis Autem Reprehender Pariatur</a> </h4>
                                        <div class="blog-desc"> 1914 translation by H. Rackham"But I must explain to you how all this mistaken idea of denouncing pl...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-4-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-4-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="index4b1d.html?route=information/blogger&amp;blogger_id=4"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="index4b1d.html?route=information/blogger&amp;blogger_id=4"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="index4b1d.html?route=information/blogger&amp;blogger_id=4">Voluptatem Accusantium Doloremque</a> </h4>
                                        <div class="blog-desc"> If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrass...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-3-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-3-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="indexaa69.html?route=information/blogger&amp;blogger_id=3"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="indexaa69.html?route=information/blogger&amp;blogger_id=3"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="indexaa69.html?route=information/blogger&amp;blogger_id=3">Matters To This Principle Of Selection</a> </h4>
                                        <div class="blog-desc"> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classi...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-2-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-2-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="index5463.html?route=information/blogger&amp;blogger_id=2"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="index5463.html?route=information/blogger&amp;blogger_id=2"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="index5463.html?route=information/blogger&amp;blogger_id=2">Omnis Voluptas Assumenda Est</a> </h4>
                                        <div class="blog-desc"> It is a long established fact that a reader will be distracted by the readable content of a page whe...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-item">
                            <div class="product-block">
                                <div class="product-block-inner">

                                    <div class="blog-left">
                                        <div class="blog-image">
                                            <img src="image/cache/catalog/blog-1-1113x647.jpg" alt="Latest Blog" title="Latest Blog" class="img-thumbnail" />
                                            <div class="post-image-hover"> </div>
                                            <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="image/cache/catalog/blog-1-1113x647.jpg" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a>
                                                <a class="icon readmore_link" title="Click to view Read More " href="index5a4b.html?route=information/blogger&amp;blogger_id=1"><i class="fa fa-link"></i></a>
                                            </p>
                                        </div>

                                    </div>


                                    <div class="blog-right">
                                        <div class="date-comment">
                                            <div class="write-comment"> <i class="fa fa-comment-o"></i> <a href="index5a4b.html?route=information/blogger&amp;blogger_id=1"> 0  Comments</a> </div>
                                            <div class="date-time"><i class="fa fa-calendar"></i> 28 February 2018 </div>
                                        </div>

                                        <h4 class="blog_title"><a href="index5a4b.html?route=information/blogger&amp;blogger_id=1">Praesentium Voluptatum Deleniti</a> </h4>
                                        <div class="blog-desc"> Suspendisse posuere, diam in bibendum lobortis, turpis ipsum aliquam risus, sit amet dictum ligula l...  </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="buttons text-center">
                        <button type="button" onclick="location='indexc295.html?route=information/blogger/blogs';" class="btn btn-primary">See all Blogs</button>
                    </div>
                </div>
            </div>
        </div>
        <span class="blog_default_width" style="display:none; visibility:hidden"></span>

        <script type="text/javascript"><!--

        $(document).ready(function(){
            $('.blogcarousel').owlCarousel({
                items: 3,
                singleItem: false,
                navigation: false,
                pagination: false,
                itemsDesktop : [1199,3],
                itemsDesktopSmall :	[991,2],
                itemsTablet :	[575,1]
            });
            // Custom Navigation Events
            $(".czblog_next").click(function(){
                $('.blogcarousel').trigger('owl.next');
            })
            $(".czblog_prev").click(function(){
                $('.blogcarousel').trigger('owl.prev');
            });
        });
        --></script>
        <div id="carousel-0" class="banners-slider-carousel box">
            <div class="container">
                <div class="box-heading">Top Brands</div>
                <div class="carousel-block">
                    <div class="customNavigation">
                        <a class="prev fa fa-arrow-left">&nbsp;</a>
                        <a class="next fa fa-arrow-right">&nbsp;</a>
                    </div>
                    <div class="product-carousel" id="module-0-carousel">
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/4-130x87.png" alt="NFL" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/2-130x87.png" alt="Sony" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/1-130x87.png" alt="Coca Cola" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/7-130x87.png" alt="Burger King" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/5-130x87.png" alt="Canon" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/6-130x87.png" alt="Harley Davidson" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/4-130x87.png" alt="Disney" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/3-130x87.png" alt="Dell" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/2-130x87.png" alt="Starbucks" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-item">
                            <div class="product-block">
                                <div class="product-block-inner">
                                    <img src="image/cache/catalog/1-130x87.png" alt="Nintendo" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <span class="module_default_width" style="display:none; visibility:hidden"></span>
    </div>

</div>

<span class="testimonial_default_width" style="display: none; visibility: hidden;"></span>

<script type="text/javascript">
    $(document).ready(function(){
        $('#ourcategory-carousel').owlCarousel({
            items: 7,
            singleItem: false,
            navigation: true,
            pagination: false,
            autoPlay: true,
            itemsDesktop : [1199,5],
            itemsDesktopSmall : [991,3],
            itemsTablet : [580,2],
            itemsMobile : [400,1]
        });

        $('#testimonial-carousel').owlCarousel({
            singleItem: true,
            navigation: false,
            pagination: true
        });

        $('.brand-carousel').owlCarousel({
            items: 5,
            itemsDesktop : [1199,4],
            itemsDesktopSmall : [991,3],
            itemsTablet: [480,2],
            itemsMobile : [320,1],
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
