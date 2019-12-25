<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>﻿

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Address Book</title>

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


    <link href="style.href" type="text/css" rel="style.rel" media="style.media" />


    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>

    <link href="https://demo.codezeel.com/opencart/OPC04/OPC040082/image/catalog/cart.png" rel="icon" />
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
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="js/ajax.js"></script>
<%--    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>--%>
    <script>
        $(document).ready(function(){
            $("#input-zone").change(function(){
                var idDistrict = $(this).children("option:selected").val();
                $.ajax({
                    url: 'http://localhost:8080/MilkTeaShop/NewAddress',
                    type: 'GET',
                    dataType: 'text',
                    data: {idDistrict: idDistrict},
                    success: function (abc) {

                        var result=" <option value=\"\">Chọn Phường/Xã</option>";
                        var f = JSON.parse(abc);
                        for (var i=0; i< f.length; i++){

                            result += "\n" + "<option value=\"" + f[i].id + "\">" + f[i].name + "</option>" + "\n";
                        }
                        $('#input-ward').html(result);
                      document.getElementsByClassName('customSelectInner')[1].innerHTML="Chọn Phường/Xã";
                    }

                })
            });
        });
    </script>
</head>


<body class="account-address-add layout-2 left-col">
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
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
<div id="account-address" class="container">
    <ul class="breadcrumb">
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/account">Account</a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address">Address Book</a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address/add">Add Address</a></li>
    </ul>
    <div class="row"><aside id="column-left" class="col-sm-3 hidden-xs">
        <div class="box">
            <div class="box-heading">Account</div>
            <div class="list-group">

                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/account " class="list-group-item">My Account </a>

                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/edit " class="list-group-item">Edit Account</a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/password" class="list-group-item">Password</a>

                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address" class="list-group-item">Address Book</a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/wishlist " class="list-group-item">Wish List </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/order " class="list-group-item">Order History </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/download" class="list-group-item">Downloads </a><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/recurring" class="list-group-item">Recurring payments </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/reward " class="list-group-item">Reward Points </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/return" class="list-group-item">Returns </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/transaction" class="list-group-item">Transactions </a> <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/newsletter" class="list-group-item">Newsletter </a>

                <a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/logout" class="list-group-item">Logout </a>

            </div>
        </div>

        <div class="box">
            <div class="box-heading">Information</div>
            <div class="list-group">
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=4">About Us </a>
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=6">Delivery Information </a>
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=3">Privacy Policy </a>
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/information&amp;information_id=5">Terms &amp; Conditions </a>
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/contact">Contact Us </a>
                <a class="list-group-item" href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=information/sitemap">Site Map </a>
            </div>
        </div>
    </aside>

        <div id="content" class="col-sm-9">
            <h2>Add Address</h2>
            <form action="<%=Util.fullPath("SaveAddress")%>" method="post" class="form-horizontal">
                <fieldset>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-name">Họ và tên</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" value="" placeholder="Họ và tên" id="input-name" autofocus class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-phone">Điện thoại</label>
                        <div class="col-sm-10">
                            <input type="text" name="phone" value="" placeholder="Nhấp số điện thoại" id="input-phone" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-country">Tỉnh/Thành phố</label>
                        <div class="col-sm-10">
                            <div type="text" name="province" disabled value="Hồ Chí Minh" id="input-country" class="form-control"> Hồ Chí Minh </div>
                        </div>
                    </div>

                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-zone">Quận/Huyện</label>
                        <div class="col-sm-10">
                            <select name="district" id="input-zone" class="form-control">
                                <option value="">Chọn Quận/Huyện</option>
                                <%ResultSet rsDistrict= (ResultSet) request.getAttribute("district");
                                        if (rsDistrict !=null){
                                            while (rsDistrict.next()){
                                %>
                                <option value="<%=rsDistrict.getString("id")%>"><%=rsDistrict.getString("name")%></option>
                                <%}}%>
                            </select>
                        </div>
                    </div>


                    <div class="form-group required">
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
                                <%ResultSet rsTypeAddress= (ResultSet) request.getAttribute("typeaddress");
                                    if (rsTypeAddress !=null){
                                        while (rsTypeAddress.next()){
                                %>
                                <option value="<%=rsTypeAddress.getInt("id")%>"><%=rsTypeAddress.getString("name")%></option>
                                <%}}%>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Địa chỉ mặc định</label>
                        <div class="col-sm-10">               <label class="radio-inline">
                            <input type="radio" name="default" value="1" />
                            Có</label>
                            <label class="radio-inline">
                                <input type="radio" name="default" value="0" checked="checked" />
                                Không</label>
                        </div>
                    </div>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="<%=Util.fullPath("MyAccount")%>" class="btn btn-default">Back</a></div>
                    <div class="pull-right">
                        <input type="submit" value="Continue" class="btn btn-primary" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
$('.form-group[data-sort]').detach().each(function() {
    if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length-2) {
        $('.form-group').eq(parseInt($(this).attr('data-sort'))+2).before(this);
    }

    if ($(this).attr('data-sort') > $('.form-group').length-2) {
        $('.form-group:last').after(this);
    }

    if ($(this).attr('data-sort') == $('.form-group').length-2) {
        $('.form-group:last').after(this);
    }

    if ($(this).attr('data-sort') < -$('.form-group').length-2) {
        $('.form-group:first').before(this);
    }
});
//--></script>

<%--<script type="text/javascript"><!----%>
<%--$('button[id^=\'button-custom-field\']').on('click', function() {--%>
<%--    var element = this;--%>

<%--    $('#form-upload').remove();--%>

<%--    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');--%>

<%--    $('#form-upload input[name=\'file\']').trigger('click');--%>

<%--    if (typeof timer != 'undefined') {--%>
<%--        clearInterval(timer);--%>
<%--    }--%>

<%--    timer = setInterval(function() {--%>
<%--        if ($('#form-upload input[name=\'file\']').val() != '') {--%>
<%--            clearInterval(timer);--%>

<%--            $.ajax({--%>
<%--                url: 'index.php?route=tool/upload',--%>
<%--                type: 'post',--%>
<%--                dataType: 'json',--%>
<%--                data: new FormData($('#form-upload')[0]),--%>
<%--                cache: false,--%>
<%--                contentType: false,--%>
<%--                processData: false,--%>
<%--                beforeSend: function() {--%>
<%--                    $(element).button('loading');--%>
<%--                },--%>
<%--                complete: function() {--%>
<%--                    $(element).button('reset');--%>
<%--                },--%>
<%--                success: function(json) {--%>
<%--                    $(element).parent().find('.text-danger').remove();--%>

<%--                    if (json['error']) {--%>
<%--                        $(element).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');--%>
<%--                    }--%>

<%--                    if (json['success']) {--%>
<%--                        alert(json['success']);--%>

<%--                        $(element).parent().find('input').val(json['code']);--%>
<%--                    }--%>
<%--                },--%>
<%--                error: function(xhr, ajaxOptions, thrownError) {--%>
<%--                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--                }--%>
<%--            });--%>
<%--        }--%>
<%--    }, 500);--%>
<%--});--%>
<%--//--></script>--%>
<script type="text/javascript"><!--
$('.date').datetimepicker({
    language: '',
    pickTime: false
});

$('.datetime').datetimepicker({
    language: '',
    pickDate: true,
    pickTime: true
});

$('.time').datetimepicker({
    language: '',
    pickDate: false
});
//--></script>
<%--<script type="text/javascript"><!----%>
<%--$('select[name=\'country_id\']').on('change', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=account/account/country&country_id=' + this.value,--%>
<%--        dataType: 'json',--%>
<%--        beforeSend: function() {--%>
<%--            $('select[name=\'country_id\']').prop('disabled', true);--%>
<%--        },--%>
<%--        complete: function() {--%>
<%--            $('select[name=\'country_id\']').prop('disabled', false);--%>
<%--        },--%>
<%--        success: function(json) {--%>
<%--            if (json['postcode_required'] == '1') {--%>
<%--                $('input[name=\'postcode\']').parent().parent().addClass('required');--%>
<%--            } else {--%>
<%--                $('input[name=\'postcode\']').parent().parent().removeClass('required');--%>
<%--            }--%>

<%--            html = '<option value=""> --- Please Select --- </option>';--%>

<%--            if (json['zone'] && json['zone'] != '') {--%>
<%--                for (i = 0; i < json['zone'].length; i++) {--%>
<%--                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';--%>

<%--                    if (json['zone'][i]['zone_id'] == '') {--%>
<%--                        html += ' selected="selected"';--%>
<%--                    }--%>

<%--                    html += '>' + json['zone'][i]['name'] + '</option>';--%>
<%--                }--%>
<%--            } else {--%>
<%--                html += '<option value="0" selected="selected"> --- None --- </option>';--%>
<%--            }--%>

<%--            $('select[name=\'zone_id\']').html(html);--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--$('select[name=\'country_id\']').trigger('change');--%>
<%--//--></script>--%>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body></html>
