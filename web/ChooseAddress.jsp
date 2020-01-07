<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.nlu.fit.Model.*" %>
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
        .name {
            color: black;
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 5px;
        }

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
            padding: 10px 15px 0;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
        }

        #content1 {
            padding-top: 10px;
            display: none;
            border: 1px solid #ddd;
            background: #f7f7f7;
            padding-right: 220px;
            padding-left: 220px;
        }

        #content {
            min-height: 400px;
        }

        html {
            scroll-behavior: smooth;
        }
        .address-item.is-default{
            border: 1px dashed #090;
        }
        span.customSelect {
            font-size: 14px;!important;
        }
        .form-control{
            color: #333;
        }
        .btn{
            text-transform: none;!important;
        }

    </style>
    <script src="js/ajax.js"></script>
    <script>
        $(document).ready(function () {
            $("#input-zone").change(function () {
                var idDistrict = $(this).children("option:selected").val();
                $.ajax({
                    url: 'http://localhost:8080/MilkTeaShop/NewAddress',
                    type: 'GET',
                    dataType: 'text',
                    data: {idDistrict: idDistrict},
                    success: function (abc) {

                        var result = " <option value=\"\">Chọn Phường/Xã</option>";
                        var f = JSON.parse(abc);
                        for (var i = 0; i < f.length; i++) {

                            result += "\n" + "<option value=\"" + f[i].id + "\">" + f[i].name + "</option>" + "\n";
                        }
                        $('#input-ward').html(result);
                        document.getElementsByClassName('customSelectInner')[1].innerHTML = "Chọn Phường/Xã";
                    }

                })
            });
            $("#addNewAddress").click(function () {
                $("#content1").css("display", "block");
                window.scrollTo(0, 300);
            });
        });

        $(document).ready(function () {
            $(".edit-address").click(function () {
               var index = $(this).attr("data-index");

               $.ajax({
                   url: 'http://localhost:8080/MilkTeaShop/QuickEditAddress',
                   type: 'GET',
                   dataType: 'text',
                   data: {index: index},
                   success: function (abc) {

                       var json = JSON.parse(abc);
                       // alert(json.type_address);
                        $("#input-name").val(json.name);
                        $("#input-phone").val(json.phone);
                       document.getElementsByClassName('customSelectInner')[0].innerHTML=json.district;
                       document.getElementsByClassName('customSelectInner')[1].innerHTML=json.ward;
                        $("#input-address").val(json.address);
                       document.getElementsByClassName('customSelectInner')[2].innerHTML=json.type_address;
                       $("#input-typeaddress").val(json.type_address);
                       $("#input-ward").attr("value", json.ward);
                       console.log("ward");
                       // console.log(json.ward);
                       console.log($("district").val());
                       $("#update1").attr("index", index);
                       $("form").attr("action", "http://localhost:8080/MilkTeaShop/SaveAddress?index=" + index);

                   }
               })
                $("#content1").css("display", "block");
                window.scrollTo(0, 300);
            })
        });
    </script>
</head>


<body class="checkout-checkout layout-2 left-col">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>
<div class="wrap-breadcrumb parallax-breadcrumb">
    <div class=""></div>
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
                    <li>Địa chỉ giao hàng</li>
                    <li>Thanh toán & Đặt mua</li>
                </ul>
            </div>
            <div>
                <div class="container">
                    <span>Chọn địa chỉ giao hàng có sẵn bên dưới</span>
                </div>

                <div class="row-address-list" style="margin-right: 0;
    margin-left: 0;
    width: 100%;
        font-size: 14px;
    overflow: hidden;
    clear: both;
    width: 100%;">
                    <% HttpSession session1 = request.getSession();
                        User user = (User) session1.getAttribute("user");
                        ArrayList<Address> addressArrayList = (ArrayList<Address>) user.getAddressList();
                        String is_default="";
                        for (int i = 0; i < addressArrayList.size(); i++) {
                            if (i==0){
                                is_default="is-default";
                            }else{
                                is_default="";
                            }
                    %>
                    <div class="col-lg-6 col-md-6 col-sm-6 item" id="item-11794124">
                        <div class="panel panel-default address-item <%=is_default%>">
                            <div class="panel-body">
                                <span class="name"><%=addressArrayList.get(i).getName()%></span> <br>
                                <span class="address" title="sdfadf, Phường Linh Trung, Quận Thủ Đức, Hồ Chí Minh">
                                    Địa chỉ: <%=addressArrayList.get(i).getAddress()%>, <%=addressArrayList.get(i).getWard()%>, <%=addressArrayList.get(i).getDistrict()%>, Hồ Chí Minh </span>
                                <br>
                                <span class="address">
                                    Việt Nam </span> <br>
                                <span class="phone">Điện thoại: <%=addressArrayList.get(i).getPhone()%></span> <br>
                                <p class="action">
                                    <a href="<%=Util.fullPath("ProcessAddress?index=") + i%>">
                                    <button type="button"  data-id="11794124" class="btn btn-default btn-custom1 saving-address
                                            is-black
                        " admicro-data-event="100117" admicro-data-auto="1" admicro-data-order="false">

                                        Giao đến địa chỉ này
                                    </button>
                                    </a>
                                    <button type="button" class="btn btn-default btn-custom1 edit-address"
                                            data-index="<%=i%>">
                                        Sửa
                                    </button>
                                    <%
                                        if (i != 0) {
                                    %>
                                    <button type="button" class="btn btn-default btn-custom1 deleting"
                                            data-index="<%=i%>">Xóa
                                    </button>
                                    <%}%>
                                </p>
                                <%if (i == 0) {%>
                                <span class="default" style="    position: absolute;
    top: 10px;
   right: 35px;
    display: block;
    font-size: 11px;
    color: #090;">Mặc định</span>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
                <div class="container">
                    <p class="other">
                        Bạn muốn giao hàng đến địa chỉ khác?
                        <a id="addNewAddress">
                            Thêm địa chỉ giao hàng mới
                        </a>
                    </p>
                </div>
                <div id="content1" class="col-sm-12">
                    <form action="" method="post" class="form-horizontal">
                        <fieldset>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name">Họ và tên</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" value="" placeholder="Họ và tên" id="input-name"
                                           class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-phone">Điện thoại</label>
                                <div class="col-sm-10">
                                    <input type="text" name="phone" value="" placeholder="Nhấp số điện thoại"
                                           id="input-phone" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-country">Tỉnh/Thành phố</label>
                                <div class="col-sm-10">
                                    <div type="text" name="province" disabled value="Hồ Chí Minh" id="input-country"
                                         class="form-control"> Hồ Chí Minh
                                    </div>
                                </div>
                            </div>

                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-zone">Quận/Huyện</label>
                                <div class="col-sm-10">
                                    <select name="district" id="input-zone" class="form-control">
                                        <option value="">Chọn Quận/Huyện</option>
                                        <%
                                            ResultSet rsDistrict = (ResultSet) request.getAttribute("district");
                                            if (rsDistrict != null) {
                                                while (rsDistrict.next()) {
                                        %>
                                        <option value="<%=rsDistrict.getString("id")%>"><%=rsDistrict.getString("name")%>
                                        </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group required" on>
                                <label class="col-sm-2 control-label" for="input-ward">Phường/Xã</label>
                                <div class="col-sm-10">
                                    <select name="ward" id="input-ward" class="form-control">
                                        <option value="">Chọn Phường/Xã</option>

                                    </select>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-address">Địa chỉ</label>
                                <div class="col-sm-10">
                            <textarea name="address" id="input-address" class="form-control">

                            </textarea>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-typeaddress">Loại địa chỉ</label>
                                <div class="col-sm-10">
                                    <select name="typeaddress" id="input-typeaddress" class="form-control">
                                        <option value="">Chọn Loại địa chỉ</option>
                                        <%
                                            ResultSet rsTypeAddress = (ResultSet) request.getAttribute("typeaddress");
                                            if (rsTypeAddress != null) {
                                                while (rsTypeAddress.next()) {
                                        %>
                                        <option value="<%=rsTypeAddress.getInt("id")%>"><%=rsTypeAddress.getString("name")%>
                                        </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                        </fieldset>
                        <div class="buttons clearfix">
                            <div class="pull-left"><a class="btn btn-default">Hủy bỏ</a>
                            </div>
                            <div class="pull-right">
                                <input id="update1" type="submit" value="Cập nhật" class="btn btn-primary"/>
                            </div>
                        </div>
                    </form>
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
