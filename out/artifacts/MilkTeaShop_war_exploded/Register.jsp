<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf8");
    response.setCharacterEncoding("utf8");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->

<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/register by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:41:47 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Register Account</title>
    <base  />

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


    <link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>

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


<body class="account-register layout-2 left-col">
<!--56-->
<% ResultSet rs = (ResultSet) request.getAttribute("a"); %>
<%@ include file="Layout/header.jsp" %>
<!--565-->
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
<div id="account-register" class="container">
    <ul class="breadcrumb">
        <li><a href="index9328.html?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="indexe223.html?route=account/account">Account</a></li>
        <li><a href="index5502.html?route=account/register">Register</a></li>
    </ul>
    <div class="row"><aside id="column-left" class="col-sm-3 hidden-xs">
        <div class="box">
            <div class="box-heading">Account</div>
            <div class="list-group">

                <a href="indexe223.html?route=account/login" class="list-group-item">Login </a> <a href="index5502.html?route=account/register" class="list-group-item">Register</a> <a href="indexacda.html?route=account/forgotten" class="list-group-item">Forgotten Password </a>

                <a href="indexe223.html?route=account/account" class="list-group-item">My Account </a>

                <a href="indexe223.html?route=account/address" class="list-group-item">Address Book</a> <a href="indexe223.html?route=account/wishlist" class="list-group-item">Wish List </a> <a href="indexe223.html?route=account/order" class="list-group-item">Order History </a> <a href="indexe223.html?route=account/download" class="list-group-item">Downloads </a><a href="indexe223.html?route=account/recurring" class="list-group-item">Recurring payments </a> <a href="indexe223.html?route=account/reward" class="list-group-item">Reward Points </a> <a href="indexe223.html?route=account/return" class="list-group-item">Returns </a> <a href="indexe223.html?route=account/transaction" class="list-group-item">Transactions </a> <a href="indexe223.html?route=account/newsletter" class="list-group-item">Newsletter </a>

            </div>
        </div>

        <div class="box">
            <div class="box-heading">Information</div>
            <div class="list-group">
                <a class="list-group-item" href="index8816.html?route=information/information&amp;information_id=4">About Us </a>
                <a class="list-group-item" href="index1766.html?route=information/information&amp;information_id=6">Delivery Information </a>
                <a class="list-group-item" href="index1679.html?route=information/information&amp;information_id=3">Privacy Policy </a>
                <a class="list-group-item" href="index99e4.html?route=information/information&amp;information_id=5">Terms &amp; Conditions </a>
                <a class="list-group-item" href="index2724.html?route=information/contact">Contact Us </a>
                <a class="list-group-item" href="index7cb2.html?route=information/sitemap">Site Map </a>
            </div>
        </div>
    </aside>

        <div id="content" class="col-sm-9">
            <h1>Register Account</h1>
            <p>If you already have an account with us, please login at the <a href="indexe223.html?route=account/login">login page</a>.</p>
            <form action="<%=Util.fullPath("DoRegister")%>" method="post" class="form-horizontal">
                <fieldset id="account">
                    <legend>Your Personal Details</legend>
                    <div class="form-group required" style="display:  none ;">
                        <label class="col-sm-2 control-label">Customer Group</label>
                        <div class="col-sm-10">                            <div class="radio">
                            <label>
                                <input type="radio" name="customer_group_id" value="1" checked="checked" />
                                Default</label>
                        </div>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="firstname" value="" placeholder="First Name" id="input-firstname" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="lastname" value="" placeholder="Last Name" id="input-lastname" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                        <div class="col-sm-10">
                            <input type="email" name="email" value="" placeholder="E-Mail" id="input-email" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                        <div class="col-sm-10">
                            <input type="tel" name="telephone" value="" placeholder="Telephone" id="input-telephone" class="form-control" />
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Your Password</legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-password">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                        <div class="col-sm-10">
                            <input type="password" name="confirm" value="" placeholder="Password Confirm" id="input-confirm" class="form-control" />
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Newsletter</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Subscribe</label>
                        <div class="col-sm-10">               <label class="radio-inline">
                            <input type="radio" name="newsletter" value="1" />
                            Yes</label>
                            <label class="radio-inline">
                                <input type="radio" name="newsletter" value="0" checked="checked" />
                                No</label>
                        </div>
                    </div>
                </fieldset>

                <div class="buttons">
                    <div class="pull-right">I have read and agree to the <a href="index11ee.html?route=information/information/agree&amp;information_id=3" class="agree"><b>Privacy Policy</b></a>
                        <input type="checkbox" name="agree" value="1" />
                        &nbsp;
                        <input type="submit" value="Continue" class="btn btn-primary" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<%--<script type="text/javascript"><!----%>
<%--// Sort the custom fields--%>
<%--$('#account .form-group[data-sort]').detach().each(function() {--%>
<%--    if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {--%>
<%--        $('#account .form-group').eq($(this).attr('data-sort')).before(this);--%>
<%--    }--%>

<%--    if ($(this).attr('data-sort') > $('#account .form-group').length) {--%>
<%--        $('#account .form-group:last').after(this);--%>
<%--    }--%>

<%--    if ($(this).attr('data-sort') == $('#account .form-group').length) {--%>
<%--        $('#account .form-group:last').after(this);--%>
<%--    }--%>

<%--    if ($(this).attr('data-sort') < -$('#account .form-group').length) {--%>
<%--        $('#account .form-group:first').before(this);--%>
<%--    }--%>
<%--});--%>

<%--$('input[name=\'customer_group_id\']').on('change', function() {--%>
<%--    $.ajax({--%>
<%--        url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,--%>
<%--        dataType: 'json',--%>
<%--        success: function(json) {--%>
<%--            $('.custom-field').hide();--%>
<%--            $('.custom-field').removeClass('required');--%>

<%--            for (i = 0; i < json.length; i++) {--%>
<%--                custom_field = json[i];--%>

<%--                $('#custom-field' + custom_field['custom_field_id']).show();--%>

<%--                if (custom_field['required']) {--%>
<%--                    $('#custom-field' + custom_field['custom_field_id']).addClass('required');--%>
<%--                }--%>
<%--            }--%>
<%--        },--%>
<%--        error: function(xhr, ajaxOptions, thrownError) {--%>
<%--            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);--%>
<%--        }--%>
<%--    });--%>
<%--});--%>

<%--$('input[name=\'customer_group_id\']:checked').trigger('change');--%>
<%--//--></script>--%>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
    var element = this;

    $('#form-upload').remove();

    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

    $('#form-upload input[name=\'file\']').trigger('click');

    if (typeof timer != 'undefined') {
        clearInterval(timer);
    }

    timer = setInterval(function() {
        if ($('#form-upload input[name=\'file\']').val() != '') {
            clearInterval(timer);

            $.ajax({
                url: 'index.php?route=tool/upload',
                type: 'post',
                dataType: 'json',
                data: new FormData($('#form-upload')[0]),
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function() {
                    $(element).button('loading');
                },
                complete: function() {
                    $(element).button('reset');
                },
                success: function(json) {
                    $(element).parent().find('.text-danger').remove();

                    if (json['error']) {
                        $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                    }

                    if (json['success']) {
                        alert(json['success']);

                        $(element).parent().find('input').val(json['code']);
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        }
    }, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
    language: '',
    pickTime: false
});

$('.time').datetimepicker({
    language: '',
    pickDate: false
});

$('.datetime').datetimepicker({
    language: '',
    pickDate: true,
    pickTime: true
});
//--></script>

<%@ include file="Layout/footer.jsp" %>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body>
<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/register by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:41:51 GMT -->
</html> 