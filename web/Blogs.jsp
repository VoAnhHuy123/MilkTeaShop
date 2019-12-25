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
<body class="information-blogger-blogs layout-2 left-col">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>
<div class="wrap-breadcrumb parallax-breadcrumb">
    <div class="container">
        <ul class="breadcrumb">

            <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i
                    class="fa fa-home"></i></a></li>

            <li>
                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger">Blogs</a>
            </li>

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
<div class="container">


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
            <div class="box">
                <div class="box-heading">Information</div>
                <div class="list-group">
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=4">About
                        Us </a>
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=6">Delivery
                        Information </a>
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=3">Privacy
                        Policy </a>
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=5">Terms
                        &amp; Conditions </a>
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/contact">Contact
                        Us </a>
                    <a class="list-group-item"
                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/sitemap">Site
                        Map </a>
                </div>
            </div>
        </aside>
        <div id="content" class="col-sm-9  all-blog">
            <h1>All Blogs</h1>


            <div class="panel-default">


                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=6">Necessitatibus
                                Saepe Eveniet</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-6-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-6-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-6-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=6"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=6">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">The standard Lorem Ipsum passage, used since the 1500s"Lorem ipsum dolor
                            sit amet, consectetur adipi...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=6"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=5">Quis
                                Autem Reprehender Pariatur</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-5-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-5-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-5-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=5"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=5">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">1914 translation by H. Rackham"But I must explain to you how all this
                            mistaken idea of denouncing pl...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=5"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=4">Voluptatem
                                Accusantium Doloremque</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-4-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-4-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-4-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=4"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=4">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">If you are going to use a passage of Lorem Ipsum, you need to be sure
                            there isn't anything embarrass...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=4"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=3">Matters
                                To This Principle Of Selection</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-3-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-3-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-3-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=3"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=3">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has
                            roots in a piece of classi...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=3"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=2">Omnis
                                Voluptas Assumenda Est</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-2-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-2-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-2-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=2"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=2">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">It is a long established fact that a reader will be distracted by the
                            readable content of a page whe...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=2"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="blog-left-content">
                            <h5 class="blog-title"><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=1">Praesentium
                                Voluptatum Deleniti</a></h5>

                            <div class="blog-image"
                                 style="background-image: url(&quot;https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-1-1113x647.jpg&quot;);">
                                <img src="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-1-1113x647.jpg"
                                     alt="Blogs" title="Blogs" class="img-thumbnail">
                                <div class="post-image-hover"></div>
                                <p class="post_hover"><a class="icon zoom" title="Click to view Full Image "
                                                         href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/blog-1-1113x647.jpg"
                                                         data-lightbox="example-set"><i class="fa fa-search-plus"></i>
                                </a>
                                    <a class="icon readmore_link" title="Click to view Read More "
                                       href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=1"><i
                                            class="fa fa-link"></i></a></p>
                            </div>

                        </div>

                        <div class="blog-right-content">
                            <div class="blog-date-comment">
                                <div class="blog-date">28 February, 2018</div>
                                <div class="comment-wrapper">
                                    <div class="write-comment-count"> 0 Comment</div>
                                    <div class="write-comment"><a
                                            href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=1">Leave
                                        Comment</a></div>
                                </div>
                            </div>
                        </div>

                        <div class="blog-desc">Suspendisse posuere, diam in bibendum lobortis, turpis ipsum aliquam
                            risus, sit amet dictum ligula l...
                        </div>
                        <div class="read-more"><a
                                href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/blogger&amp;blogger_id=1"
                                class="btn btn-default"> <i class="fa fa-link"></i> read more</a></div>
                    </div>
                </div>

            </div>


        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>
</body>
</html>
