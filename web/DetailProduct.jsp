<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.swing.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html dir="ltr" lang="en">
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
    <link rel="stylesheet" type="text/css" href="css/DetailProduct.css"/>


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
    <script src="js/detailProduct.js"></script>
</head>
<body class="product-product-47 layout-1">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>
<% ResultSet ss = (ResultSet) request.getAttribute("b");
    while (ss.next()) {
%>

<div class="wrap-breadcrumb parallax-breadcrumb" style="background-position: 50% -133.636px;">
    <div class="container">
        <ul class="breadcrumb">
            <li>
                <a href="<%=Util.fullPath("Index")%>"><i class="fa fa-home"></i></a></li>
            <li>
                <a href="<%=Util.fullPath("ListProduct")%>">Foods</a>
            </li>
            <li>
                <a href=""><%=ss.getString("name")%>
                </a></li>
        </ul>
    </div>
</div>

<!-- ======= Quick view JS ========= -->
<div id="product-product" class="container">
    <div class="row">
        <div id="content" class="col-sm-12 productpage">

            <div class="row">
                <div class="col-sm-5 product-left">
                    <div class="product-info">
                        <div class="left product-image thumbnails">
                            <!-- Codezeel Cloud-Zoom Image Effect Start -->
                            <div class="image"><a class="thumbnail"
                                                  href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/cache/catalog/01-800x800.jpg">
                                <img id="tmzoom"
                                     src="<%=ss.getString("image")%>"
                                     data-zoom-image=""
                                     title="<%=ss.getString("name")%>" alt=""></a></div>
                            <!-- Codezeel Cloud-Zoom Image Effect End-->
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" align="left">
                    <h2><%=ss.getString("name")%></h2>
                    <!--Giá SP-->
                    <div class="price" align="left"><span><%=ss.getString("sale_price")%></span><small>&nbsp;VND</small>
                    </div>
                    <!--End giá-->
                    <!-- Begin Form -->
                    <form class="form-addcart" name="form_addcart" id="form_addcart"
                          action="">
                        <input type="hidden" name="product" id="product" value="57">
                        <!--Giá chọn thêm-->
                        <div class="pr-plus">+<span>0</span> VND</div>
                        <p class="multiselct" style="overflow: auto"></p>
<%--                        <p class="multiselct"></p>--%>
                        <input type="hidden" value="" name="apid" id="apid">
                        <!--End thêm-->
                        <!--Chọn size-->
                        <div class="size">
                            <label>Size</label>
                            <div class="radio-size" style="float: right">
                                <% ResultSet rsSize = (ResultSet) request.getAttribute("size");
                                while (rsSize.next()){
                                double price = rsSize.getDouble("rate") * ss.getDouble("sale_price");
                                String status="";
                                if (rsSize.getString("id").equals("S")){status="checked=\"checked\"";};
                                %>
                                <input type="radio" id="size<%=rsSize.getString("id")%>" name="sizename" value="<%=rsSize.getString("id")%>" data-price="<%=price%>"
                                       <%=status%> >
                                <label for="size<%=rsSize.getString("id")%>"><%=rsSize.getString("id")%></label>
                              <%
                                  }
                              %>
                            </div>
                            <div class="clearfix"></div>
                        </div><!--End size-->
                        <hr>
                        <!--Chọn số lượng-->
                        <div class="soluong">
                            <label>Số lượng</label>
                            <div class="form-group" style="width: 110px;float: right">
                                <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                                <div class="input-group">
                                    <div class="input-group-addon giam" onclick=""><i class="fa fa-minus"></i></div>
                                    <input type="text" class="form-control input-sm" style="text-align:center"
                                           name="quantity" id="quantity" value="1">
                                    <div class="input-group-addon giam" onclick=""><i class="fa fa-plus"></i></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div><!--End số lượng-->
                        <div class="rating-wrapper">
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                    class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i
                                class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span
                                class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i
                                class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span
                                class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i
                                class="fa fa-star-o fa-stack-1x"></i></span> <a href="" class="review-count"
                                                                                onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">1
                            reviews</a> <a href=""
                                           onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"
                                           class="write-review"><i class="fa fa-pencil"></i>Write a review</a>

                        </div>
                        <ul class="list-unstyled attr">
                            <li><span class="desc">Brand:: </span><a
                                    href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=product/manufacturer/info&amp;manufacturer_id=8">Apple</a>
                            </li>
                            <li><span class="desc">Product Code: </span> product 20</li>
                            <li><span class="desc">Availability: </span> In Stock</li>
                        </ul>
                        <div id="dd" class="wrapper-dropdown active">Topping:</div>
                        <dl class="dropdown">
                            <dt style="height: 30px;overflow: auto;
    padding: 5px">
                                <span class="hida">Select</span>
                                <p class="multiselct" style="overflow: auto"></p>
                            </dt>

                            <dd>
                                <div class="mutliSelect">
                                    <ul style="width: 325px;margin-left: 121px; display: block;">
                                        <%
                                            ResultSet re = (ResultSet) request.getAttribute("c");
                                            while (re.next()) {
                                        %>
                                        <li>
                                            <input type="checkbox" id="el-199" name="el-199"
                                                   ids="<%=re.getInt("id")%>"
                                                   data-price="<%=re.getDouble("price")%>"
                                                   value="<%=re.getString("name")%>"><%=re.getString("name")%>
<%--                                            <label>+<%=re.getString("price")%>vnd</label>--%>
                                        </li>
                                        <%}%>
                                    </ul>
                                </div>
                            </dd>
                        </dl>
                    </form>
                    <button type="button" id="button-cart" data-loading-text="Loading..."
                            onclick="addToCartMain(<%=ss.getInt("id")%>)"
                            class="btn btn-primary btn-lg btn-block">Add to Cart
                    </button>

                </div>
                <!-- product page tab code start-->

                <div id="tabs_info" class="product-tab col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-description" data-toggle="tab">Description</a></li>
                        <li><a href="#tab-specification" data-toggle="tab">Specification</a></li>
                        <li><a href="#tab-review" data-toggle="tab">Reviews (1)</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-description"><p>
                            Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat
                            Panel Monitor. This flagship monitor features best-in-class performance and presentation
                            features on a huge wide-aspect screen while letting you work as comfortably as possible -
                            you might even forget you're at the office</p>
                        </div>
                        <div class="tab-pane" id="tab-specification">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <td colspan="2"><strong>Memory</strong></td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>test 1</td>
                                    <td>16GB</td>
                                </tr>
                                </tbody>
                                <thead>
                                <tr>
                                    <td colspan="2"><strong>Processor</strong></td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>No. of Cores</td>
                                    <td>4</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-review">
                            <form class="form-horizontal" id="form-review">
                                <div id="review">
                                    <table class="table table-striped table-bordered">
                                        <tbody>
                                        <tr>
                                            <td style="width: 50%;"><strong>Matthew Wade</strong></td>
                                            <td class="text-right">09/03/2017</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><p>Contrary to popular belief, Lorem Ipsum is not simply
                                                random text.</p>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                        class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                        class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                        class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span> <span
                                                        class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="text-right"></div>
                                </div>
                                <h3>Write a review</h3>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-name">Your Name</label>
                                        <input type="text" name="name" value="" id="input-name" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-review">Your Review</label>
                                        <textarea name="text" rows="5" id="input-review"
                                                  class="form-control"></textarea>
                                        <div class="help-block"><span class="text-danger">Note:</span> HTML is not
                                            translated!
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label">Rating</label>
                                        &nbsp;&nbsp;&nbsp; Bad&nbsp;
                                        <input type="radio" name="rating" value="1">
                                        &nbsp;
                                        <input type="radio" name="rating" value="2">
                                        &nbsp;
                                        <input type="radio" name="rating" value="3">
                                        &nbsp;
                                        <input type="radio" name="rating" value="4">
                                        &nbsp;
                                        <input type="radio" name="rating" value="5">
                                        &nbsp;Good
                                    </div>
                                </div>

                                <div class="buttons clearfix">
                                    <div class="pull-right">
                                        <button type="button" id="button-review" data-loading-text="Loading..."
                                                class="btn btn-primary">Continue
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%}%>

<script>
    $(".dropdown dt ").on('click', function () {
        $(".dropdown dd ul").slideToggle('fast');
    });

    $(".dropdown dd ul li a").on('click', function () {
        $(".dropdown dd ul").hide();
    });

    function getSelectedValue(id) {
        return $("#" + id).find("dt a span.value").html();
    }

    $(document).bind('click', function (e) {
        var $clicked = $(e.target);
        if (!$clicked.parents().hasClass("dropdown")) $(".dropdown dd ul").hide();
    });


    $('.mutliSelect input[type="checkbox"]').on('click', function () {
        var g = $('.pr-plus span').html();
        // var gg = document.getElementsByClassName("pr-plus")[0].value;
        // alert(g);
        var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
            title = $(this).val() + ",";



        if ($(this).is(':checked')) {
            var price = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
                price =  Number(g)+ Number($(this).attr('data-price'));
            var html = '<span title="' + title + '">' + title + '</span>';
            // var  htmll = '<span title="' + price + '">' + price + " VND"+ '</span>';
            $('.multiselct').append(html);
            $('.pr-plus span').html(price);
            $(".hida").hide();
        } else {
            $('span[title="' + title + '"]').remove();
            var ret = $(".hida");
            $('.dropdown dt a').append(ret);
            var price = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
            price = Number(g)-Number($(this).attr('data-price'));
            $('.pr-plus span').html(price);

        }
    });
</script>

<%@ include file="Layout/footer.jsp" %>
<%--<script type="text/javascript" src="js/detailProduct.js"></script>--%>
</body>
</html>
