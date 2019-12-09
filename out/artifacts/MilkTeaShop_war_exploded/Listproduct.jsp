<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->

<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&path=20 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:33:44 GMT -->
<!-- Added by HTTrack -->
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
    <style>
        .pagination {
            display: flex;
            display: -webkit-flex; /* Safari 8 */
            flex-wrap: wrap;
            -webkit-flex-wrap: wrap; /* Safari 8 */
            justify-content: center;
            -webkit-justify-content: center;
        }
    </style>
</head>


<body class="product-category-20 layout-2 left-col">
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
<div id="product-category" class="container">
    <ul class="breadcrumb">
        <li><a href="index9328.html?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="index98dc.html?route=product/category&amp;path=20">Product</a></li>
    </ul>
    <div class="row">
        <aside id="column-left" class="col-sm-3 hidden-xs">
            <div class="box sidebarFilter">
                <div class="box-heading">Refine Search</div>
                <div class="filterbox">
                    <div class="list-group-filter">

                        <a class="list-group-item group-name">Color</a>
                        <div class="list-group-item">
                            <div id="filter-group1">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="4"/>
                                        Green
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="2"/>
                                        Red
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="3"/>
                                        Yellow
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="1"/>
                                        Blue
                                    </label>
                                </div>
                            </div>
                        </div>

                        <a class="list-group-item group-name">Size</a>
                        <div class="list-group-item">
                            <div id="filter-group2">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="5"/>
                                        Small
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="6"/>
                                        Medium
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="7"/>
                                        Large
                                    </label>
                                </div>
                            </div>
                        </div>

                        <a class="list-group-item group-name">Weight</a>
                        <div class="list-group-item">
                            <div id="filter-group3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="9"/>
                                        5
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="10"/>
                                        10
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="filter[]" value="11"/>
                                        15
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" id="button-filter" class="btn btn-primary">Refine Search</button>
                    </div>
                </div>
            </div>
            <script type="text/javascript"><!--
            $('#button-filter').on('click', function () {
                filter = [];

                $('input[name^=\'filter\']:checked').each(function (element) {
                    filter.push(this.value);
                });

                location = 'indexfd9e.html?route=product/category&amp;path=20&amp;filter=' + filter.join(',');
            });
            //--></script>

            <div class="swiper-viewport">
                <div id="banner0" class="swiper-container  single-banner ">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><a href="#"><img src="image/cache/catalog/left-banner-1-257x320.jpg"
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
            <span class="special_default_width" style="display:none; visibility:hidden"></span>

        </aside>

        <div id="content" class="col-sm-9">
            <%--            <h1 class="page-title">Product</h1>--%>
            <div class="row category_thumb">
                <%--                <div class="col-sm-2 category_img"><img src="image/cache/catalog/category-banner-1113x200.jpg"--%>
                <%--                                                        alt="Foods" title="Foods" class="img-thumbnail"/></div>--%>
            </div>
            <div class="category_filter">
                <div class="col-md-4 btn-list-grid">
                    <div class="btn-group">
                        <button type="button" id="grid-view" class="btn btn-default grid active" data-toggle="tooltip"
                                title="Grid" onclick="gridView()"><i class="fa fa-th"></i></button>
                        <button type="button" id="list-view" class="btn btn-default list" data-toggle="tooltip"
                                title="List" onclick="listView()"><i class="fa fa-th-list"></i></button>
                    </div>
                </div>
                <div class="pagination-right">
                    <div class="sort-by-wrapper">
                        <div class="col-md-2 text-right sort-by">
                            <label class="control-label" for="input-sort">Sort By:</label>
                        </div>
                        <div class="col-md-3 text-right sort">
                            <select id="input-sort" class="form-control" onchange="location = this.value;">

                                <option value=""
                                        selected="selected">Default
                                </option>

                                <option value="">
                                    Name (A - Z)
                                </option>

                                <option value="">
                                    Name (Z - A)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=p.price&amp;order=ASC ">
                                    Price (Low &gt; High)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=p.price&amp;order=DESC ">
                                    Price (High &gt; Low)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=rating&amp;order=DESC ">
                                    Rating (Highest)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=rating&amp;order=ASC ">
                                    Rating (Lowest)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=p.model&amp;order=ASC ">
                                    Model (A - Z)
                                </option>

                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;sort=p.model&amp;order=DESC ">
                                    Model (Z - A)
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="show-wrapper">
                        <div class="col-md-1 text-right show">
                            <label class="control-label" for="input-limit">Show:</label>
                        </div>
                        <div class="col-md-2 text-right limit">
                            <select id="input-limit" class="form-control" onchange="location = this.value;">
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;limit=12 "
                                        selected="selected">12
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;limit=25 ">
                                    25
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;limit=50 ">
                                    50
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;limit=75 ">
                                    75
                                </option>
                                <option value="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/category&amp;path=20&amp;limit=100 ">
                                    100
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row cat_prod">
                <% ResultSet ss = (ResultSet) request.getAttribute("b");
                    while (ss.next()) {
                %>
                <div class="product-layout product-list col-xs-12">
                    <div class="product-block product-thumb">
                        <div class="product-block-inner">
                            <div class="image">
                                <a href="index5f5b.html?route=product/product&amp;path=20&amp;product_id=32">
                                    <img src="<%= ss.getString("image")%>" title="Reprehenderit Aliquam"
                                         alt="Reprehenderit Aliquam" class="img-responsive reg-image"/>
                                    <img class="img-responsive hover-image" src="<%= ss.getString("image")%>"
                                         title="Reprehenderit Aliquam" alt="Reprehenderit Aliquam"/>
                                </a>

                                <div class="saleback">
                                    <span class="saleicon sale">Sale</span>
                                </div>


                                <div class="percentsaving"><%= ss.getString("sale_percent")%> off</div>

                                <div class="button-group">
                                    <button type="button" class="wishlist" data-toggle="tooltip"
                                            title="Add to Wish List" onclick="wishlist.add('32');"><i
                                            class="fa fa-heart"></i></button>
                                    <div class="quickview-button" data-toggle="tooltip" title="Quick view"><a
                                            class="quickbox"
                                    <%--                                            ////--%>
                                            href="">
                                        <i class="fa fa-eye" aria-hidden="true"></i></a></div>
                                    <button type="button" class="compare" data-toggle="tooltip" title="Add to Compare"
                                            onclick="compare.add('32');"><i class="fa fa-exchange"></i></button>
                                    <button type="button" class="addtocart" data-toggle="tooltip" title="Add to Cart "
                                            onclick="cart.add('32 ');"><span>Add to Cart</span></button>
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
                                        <a href="index5f5b.html?route=product/product&amp;path=20&amp;product_id=32"><%= ss.getString("name")%>
                                        </a></h4>
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

                                    <p class="price">
                                        <span class="price-new"><%= ss.getString("sale_price")%><span
                                                style="font-size: 10px"> VND</span></span> <span
                                            class="price-old"><%= ss.getString("price")%><span
                                            style="font-size: 10px"> VND</span></span>
                                        <span class="price-tax">Ex Tax: $90.00</span>
                                    </p>

                                    <p class="desc">Revolutionary multi-touch interface.
                                        iPod touch features the same multi-touch screen technology as..</p>

                                    <button type="button" class="addtocart" onclick="cart.add('32', '1 ');"><span>Add to Cart</span>
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
            <div class="pagination-wrapper">
                <div class="col-sm-6 text-left page-link">
                    <ul class="pagination">
                        <%--                        <li class="active"><span>1</span></li>--%>
                        <%--                        <li><a href="indexf341.html?route=product/category&amp;path=20&amp;page=2">2</a></li>--%>
                        <%--                        <li><a href="indexf341.html?route=product/category&amp;path=20&amp;page=2">&gt;</a></li>--%>
                        <%--                        <li><a href="indexf341.html?route=product/category&amp;path=20&amp;page=2">&gt;|</a></li>--%>
                    </ul>
                </div>
                <div class="col-sm-6 text-right page-result">Showing 1 to 12 of 14 (2 Pages)</div>
            </div>
        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>
<script>
    var elements = document.getElementsByClassName("image");
    var i;

    function listView() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.width = "20%";
        }

    }

    function gridView() {
        for (i = 0; i < elements.length; i++) {
            elements[i].style.width = "100%";
        }

    }

    var container = document.getElementsByClassName("btn-group");
    var btns = container.getElementsByClassName("btn-default");
    for (i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
            var current = document.getElementsByClassName("active");
            pokcurrent[0].className = current[0].className.replace(" active", "-+");
            this.className += " active";
        });
    }


</script>

</body>
</html>
