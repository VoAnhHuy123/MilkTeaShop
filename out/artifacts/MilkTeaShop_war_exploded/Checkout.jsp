<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
﻿

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Checkout</title>


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

    <style>
        .progressbar {
            margin: 0;
            padding: 0;
            counter-reset: step;
        }

        .progressbar li {
            list-style-type: none;
            width: 33%;
            float: left;
            font-size: 12px;
            position: relative;
            text-align: center;
            text-transform: uppercase;
            color: #7d7d7d;
        }

        .progressbar li:before {
            width: 30px;
            height: 30px;
            content: counter(step);
            counter-increment: step;
            line-height: 30px;
            border: 2px solid #7d7d7d;
            display: block;
            text-align: center;
            margin: 0 auto 10px auto;
            border-radius: 50%;
            background-color: white;
        }

        .progressbar li:after {
            width: 100%;
            height: 2px;
            content: '';
            position: absolute;
            background-color: #7d7d7d;
            top: 15px;
            left: -50%;
            z-index: -1;
        }

        .progressbar li:first-child:after {
            content: none;
        }

        .progressbar li.active {
            color: #e49f02;
        }

        .progressbar li.active:before {
            border-color: #e49f02;
        }

        .progressbar li.active + li:after {
            background-color: #e49f02;
        }
        .panel-body {
            padding: 5px;
        }
        body{
            color: #333;
            background: #f4f4f4;
        }
        .item{
            min-height: 100px;
            /* height: auto; */
            padding-top: 12px;
            padding-bottom: 12px;
            border-bottom: 1px solid #c9c9c9;
            font-size: 11px;
        }
        .title{
            line-height: 43px;
            width: 170px;
            float: left;
        }
        .title1{
            width: 170px;
            float: left;
        }
        .price{
            float: right;
            margin-bottom: 0;
        }
        .order{
            border-bottom: 1px solid #c9c9c9;
            padding-bottom: 10px;
        }
        .end{
            font-size: 13px;
        }
        .information{
            font-size: 13px;
        }
        .information h6{
            font-size: 15px;
            font-weight: 700;
            margin-top: 15px;
            margin-bottom: 10px;
        }
    </style>
</head>


<body class="checkout-checkout layout-2 left-col">
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
<div id="checkout-checkout" class="container" style="display: flex;
    justify-content: center;">
    <ul class="breadcrumb">
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i
                class="fa fa-home"></i></a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/cart">Shopping Cart</a>
        </li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=checkout/checkout">Checkout</a>
        </li>
    </ul>

    <div class="row" style="width: 90%">
        <div id="content" class="col-sm-12" style="width: 100%">
            <div class="container col-sm-12" style="margin-bottom: 50px;">
                <ul class="progressbar">
                    <li class="active">Đăng nhập</li>
                    <li class="active">Địa chỉ giao hàng</li>
                    <li class="active">Thanh toán & Đặt mua</li>
                </ul>
            </div>

            <div class="panel-group col-sm-5" id="accordion" style="margin-right: 15px;">
                <p><strong>Chọn hình thức thanh toá</strong></p>
                <div class="panel" style="border: 1px solid #e5e5e5; padding-left: 10px">
                    <div class="radio">
                        <label> <input type="radio" name="method_cod" value="flat.flat" checked="checked">
                            Thanh toán khi nhân hàng </label>
                    </div>
                    <div class="radio">
                        <label> <input type="radio" name="method_momo" value="flat.flat" checked="checked">
                            Thanh toán bằng ví MoMo</label>
                    </div>
                </div>
                <p><strong>Ghi chú đơn hàng</strong></p>
                <p>
                    <textarea name="comment" rows="4" class="form-control"></textarea>
                </p>
            </div>
            <div class="col-sm-7 row" style="margin-top: 36px;">
                <div class="col-sm-6 panel panel-default cart">
                    <div class="panel-body">
                        <div class="order">
                        <span class="title">
                                                            Địa chỉ giao hàng
                                                    </span>
                            <a href="https://tiki.vn/checkout/shipping" class="btn btn-default btn-custom1">Sửa</a>
                        </div>
                        <div class="information">
                            <h6>Võ Huy</h6>
                            <p class="end">kjkj, Xã Phú Lâm, Huyện Yên Sơn, Tuyên Quang<br>Việt Nam<br>Điện thoại:
                                0937339896</p>
                        </div>
                    </div>
                </div>
                <div id="panel-cart" class="col-sm-6">
                    <div class="panel panel-default cart">
                        <div class="panel-body">
                            <div class="order">
                                <span class="title">Đơn Hàng</span>
                                <a href="/checkout/cart/" class="btn btn-default btn-custom1">Sửa</a>
                            </div>
                            <div class="product">
                                <div class="item">
                                    <p class="title1">
                                        <strong>1 x</strong><a
                                            href=""
                                            target="_blank">Túi 100 Quả Bóng Nhựa Cho Bé Vui Chơi</a>
                                        <span class="seller-by">
                                </span>
                                    </p>


                                    <p class="price text-right">
                                        <span>61.000đ </span>
                                    </p>
                                </div>
                            </div>

                            <p class="list-info-price">
                                <b>Tạm tính</b>
                                <span>61.000đ</span>
                            </p>
                            <p class="list-info-price">
                                <b>Phí vận chuyển</b>
                                <span>18.000đ</span>
                            </p>

                            <p class="total2">
                                Thành tiền:
                                <span>79.000đ </span>
                            </p>
                            <p class="text-right">
                                <i>(Đã bao gồm VAT nếu có)</i>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>
<%--<script type="text/javascript"><!----%>
<%--$(document).on('change', 'input[name=\'account\']', function() {--%>
<%--    if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {--%>
<%--        if (this.value == 'register') {--%>
<%--            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');--%>
<%--        } else {--%>
<%--            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');--%>
<%--        }--%>
<%--    } else {--%>
<%--        if (this.value == 'register') {--%>
<%--            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Account &amp; Billing Details');--%>
<%--        } else {--%>
<%--            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('Step 2: Billing Details');--%>
<%--        }--%>
<%--    }--%>
<%--});--%>

<%--$(document).ready(function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/payment_address',--%>
<%--        dataType: 'html',--%>
<%--        success: function(html) {--%>
<%--            $('#collapse-payment-address .panel-body').html(html);--%>

<%--            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');--%>

<%--            $('a[href=\'#collapse-payment-address\']').trigger('click');--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Checkout--%>
<%--$(document).delegate('#button-account', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),--%>
<%--        dataType: 'html',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-account').button('loading');--%>
<%--        },--%>
<%--        complete: function() {--%>
<%--            $('#button-account').button('reset');--%>
<%--        },--%>
<%--        success: function(html) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            $('#collapse-payment-address .panel-body').html(html);--%>

<%--            if ($('input[name=\'account\']:checked').val() == 'register') {--%>
<%--                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Account &amp; Billing Details <i class="fa fa-caret-down"></i></a>');--%>
<%--            } else {--%>
<%--                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');--%>
<%--            }--%>

<%--            $('a[href=\'#collapse-payment-address\']').trigger('click');--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Login--%>
<%--$(document).delegate('#button-login', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/login/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-checkout-option :input'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-login').button('loading');--%>
<%--        },--%>
<%--        complete: function() {--%>
<%--            $('#button-login').button('reset');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>

<%--                // Highlight any found errors--%>
<%--                $('input[name=\'email\']').parent().addClass('has-error');--%>
<%--                $('input[name=\'password\']').parent().addClass('has-error');--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Register--%>
<%--$(document).delegate('#button-register', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/register/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-register').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-register').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>

<%--                for (i in json['error']) {--%>
<%--                    var element = $('#input-payment-' + i.replace('_', '-'));--%>

<%--                    if ($(element).parent().hasClass('input-group')) {--%>
<%--                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    } else {--%>
<%--                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    }--%>
<%--                }--%>

<%--                // Highlight any found errors--%>
<%--                $('.text-danger').parent().addClass('has-error');--%>
<%--            } else {--%>
<%--                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');--%>

<%--                if (shipping_address) {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/shipping_method',--%>
<%--                        dataType: 'html',--%>
<%--                        success: function(html) {--%>
<%--                            // Add the shipping address--%>
<%--                            $.ajax({--%>
<%--                                url: 'index.php?route=checkout/shipping_address',--%>
<%--                                dataType: 'html',--%>
<%--                                success: function(html) {--%>
<%--                                    $('#collapse-shipping-address .panel-body').html(html);--%>

<%--                                    $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');--%>
<%--                                },--%>
<%--                                error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                                }--%>
<%--                            });--%>

<%--                            $('#collapse-shipping-method .panel-body').html(html);--%>

<%--                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');--%>

<%--                            $('a[href=\'#collapse-shipping-method\']').trigger('click');--%>

<%--                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');--%>
<%--                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                } else {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/shipping_address',--%>
<%--                        dataType: 'html',--%>
<%--                        success: function(html) {--%>
<%--                            $('#collapse-shipping-address .panel-body').html(html);--%>

<%--                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');--%>

<%--                            $('a[href=\'#collapse-shipping-address\']').trigger('click');--%>

<%--                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');--%>
<%--                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                }--%>

<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/payment_address',--%>
<%--                    dataType: 'html',--%>
<%--                    complete: function() {--%>
<%--                        $('#button-register').button('reset');--%>
<%--                    },--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-payment-address .panel-body').html(html);--%>

<%--                        $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 2: Billing Details <i class="fa fa-caret-down"></i></a>');--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Payment Address--%>
<%--$(document).delegate('#button-payment-address', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/payment_address/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-payment-address').button('loading');--%>
<%--        },--%>
<%--        complete: function() {--%>
<%--            $('#button-payment-address').button('reset');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>

<%--                for (i in json['error']) {--%>
<%--                    var element = $('#input-payment-' + i.replace('_', '-'));--%>

<%--                    if ($(element).parent().hasClass('input-group')) {--%>
<%--                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    } else {--%>
<%--                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    }--%>
<%--                }--%>

<%--                // Highlight any found errors--%>
<%--                $('.text-danger').parent().parent().addClass('has-error');--%>
<%--            } else {--%>
<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/shipping_address',--%>
<%--                    dataType: 'html',--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-shipping-address .panel-body').html(html);--%>

<%--                        $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');--%>

<%--                        $('a[href=\'#collapse-shipping-address\']').trigger('click');--%>

<%--                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');--%>
<%--                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                }).done(function() {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/payment_address',--%>
<%--                        dataType: 'html',--%>
<%--                        success: function(html) {--%>
<%--                            $('#collapse-payment-address .panel-body').html(html);--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Shipping Address--%>
<%--$(document).delegate('#button-shipping-address', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/shipping_address/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-shipping-address').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-shipping-address').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>

<%--                for (i in json['error']) {--%>
<%--                    var element = $('#input-shipping-' + i.replace('_', '-'));--%>

<%--                    if ($(element).parent().hasClass('input-group')) {--%>
<%--                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    } else {--%>
<%--                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    }--%>
<%--                }--%>

<%--                // Highlight any found errors--%>
<%--                $('.text-danger').parent().parent().addClass('has-error');--%>
<%--            } else {--%>
<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/shipping_method',--%>
<%--                    dataType: 'html',--%>
<%--                    complete: function() {--%>
<%--                        $('#button-shipping-address').button('reset');--%>
<%--                    },--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-shipping-method .panel-body').html(html);--%>

<%--                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');--%>

<%--                        $('a[href=\'#collapse-shipping-method\']').trigger('click');--%>

<%--                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>

<%--                        $.ajax({--%>
<%--                            url: 'index.php?route=checkout/shipping_address',--%>
<%--                            dataType: 'html',--%>
<%--                            success: function(html) {--%>
<%--                                $('#collapse-shipping-address .panel-body').html(html);--%>
<%--                            },--%>
<%--                            error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                            }--%>
<%--                        });--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                }).done(function() {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/payment_address',--%>
<%--                        dataType: 'html',--%>
<%--                        success: function(html) {--%>
<%--                            $('#collapse-payment-address .panel-body').html(html);--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Guest--%>
<%--$(document).delegate('#button-guest', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/guest/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-guest').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-guest').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>

<%--                for (i in json['error']) {--%>
<%--                    var element = $('#input-payment-' + i.replace('_', '-'));--%>

<%--                    if ($(element).parent().hasClass('input-group')) {--%>
<%--                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    } else {--%>
<%--                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    }--%>
<%--                }--%>

<%--                // Highlight any found errors--%>
<%--                $('.text-danger').parent().addClass('has-error');--%>
<%--            } else {--%>
<%--                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');--%>

<%--                if (shipping_address) {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/shipping_method',--%>
<%--                        dataType: 'html',--%>
<%--                        complete: function() {--%>
<%--                            $('#button-guest').button('reset');--%>
<%--                        },--%>
<%--                        success: function(html) {--%>
<%--                            // Add the shipping address--%>
<%--                            $.ajax({--%>
<%--                                url: 'index.php?route=checkout/guest_shipping',--%>
<%--                                dataType: 'html',--%>
<%--                                success: function(html) {--%>
<%--                                    $('#collapse-shipping-address .panel-body').html(html);--%>

<%--                                    $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');--%>
<%--                                },--%>
<%--                                error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                                }--%>
<%--                            });--%>

<%--                            $('#collapse-shipping-method .panel-body').html(html);--%>

<%--                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i></a>');--%>

<%--                            $('a[href=\'#collapse-shipping-method\']').trigger('click');--%>

<%--                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                } else {--%>
<%--                    $.ajax({--%>
<%--                        url: 'index.php?route=checkout/guest_shipping',--%>
<%--                        dataType: 'html',--%>
<%--                        complete: function() {--%>
<%--                            $('#button-guest').button('reset');--%>
<%--                        },--%>
<%--                        success: function(html) {--%>
<%--                            $('#collapse-shipping-address .panel-body').html(html);--%>

<%--                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 3: Delivery Details <i class="fa fa-caret-down"></i></a>');--%>

<%--                            $('a[href=\'#collapse-shipping-address\']').trigger('click');--%>

<%--                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('Step 4: Delivery Method');--%>
<%--                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                        },--%>
<%--                        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                        }--%>
<%--                    });--%>
<%--                }--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--// Guest Shipping--%>
<%--$(document).delegate('#button-guest-shipping', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/guest_shipping/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-guest-shipping').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>
<%--            $('.form-group').removeClass('has-error');--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-guest-shipping').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>

<%--                for (i in json['error']) {--%>
<%--                    var element = $('#input-shipping-' + i.replace('_', '-'));--%>

<%--                    if ($(element).parent().hasClass('input-group')) {--%>
<%--                        $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    } else {--%>
<%--                        $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');--%>
<%--                    }--%>
<%--                }--%>

<%--                // Highlight any found errors--%>
<%--                $('.text-danger').parent().addClass('has-error');--%>
<%--            } else {--%>
<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/shipping_method',--%>
<%--                    dataType: 'html',--%>
<%--                    complete: function() {--%>
<%--                        $('#button-guest-shipping').button('reset');--%>
<%--                    },--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-shipping-method .panel-body').html(html);--%>

<%--                        $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 4: Delivery Method <i class="fa fa-caret-down"></i>');--%>

<%--                        $('a[href=\'#collapse-shipping-method\']').trigger('click');--%>

<%--                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('Step 5: Payment Method');--%>
<%--                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--$(document).delegate('#button-shipping-method', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/shipping_method/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-shipping-method').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-shipping-method').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>
<%--            } else {--%>
<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/payment_method',--%>
<%--                    dataType: 'html',--%>
<%--                    complete: function() {--%>
<%--                        $('#button-shipping-method').button('reset');--%>
<%--                    },--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-payment-method .panel-body').html(html);--%>

<%--                        $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 5: Payment Method <i class="fa fa-caret-down"></i></a>');--%>

<%--                        $('a[href=\'#collapse-payment-method\']').trigger('click');--%>

<%--                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('Step 6: Confirm Order');--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--$(document).delegate('#button-payment-method', 'click', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=checkout/payment_method/save',--%>
<%--        type: 'post',--%>
<%--        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('#button-payment-method').button('loading');--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            $('.alert-dismissible, .text-danger').remove();--%>

<%--            if (json['redirect']) {--%>
<%--                location = json['redirect'];--%>
<%--            } else if (json['error']) {--%>
<%--                $('#button-payment-method').button('reset');--%>

<%--                if (json['error']['warning']) {--%>
<%--                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger alert-dismissible">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');--%>
<%--                }--%>
<%--            } else {--%>
<%--                $.ajax({--%>
<%--                    url: 'index.php?route=checkout/confirm',--%>
<%--                    dataType: 'html',--%>
<%--                    complete: function() {--%>
<%--                        $('#button-payment-method').button('reset');--%>
<%--                    },--%>
<%--                    success: function(html) {--%>
<%--                        $('#collapse-checkout-confirm .panel-body').html(html);--%>

<%--                        $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Step 6: Confirm Order <i class="fa fa-caret-down"></i></a>');--%>

<%--                        $('a[href=\'#collapse-checkout-confirm\']').trigger('click');--%>
<%--                    },--%>
<%--                    error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>
<%--//--></script>--%>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body>
</html>
