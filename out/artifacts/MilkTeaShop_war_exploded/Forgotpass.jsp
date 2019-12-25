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

<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/forgotten by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:42:54 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Forgot Your Password?</title>
    <base/>

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
</head>


<body class="account-forgotten layout-2 left-col">
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
<div id="account-forgotten" class="container">
    <ul class="breadcrumb">
        <li><a href="index9328.html?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="indexe223.html?route=account/account">Account</a></li>
        <li><a href="indexacda.html?route=account/forgotten">Forgotten Password</a></li>
    </ul>
    <div class="row">
        <aside id="column-left" class="col-sm-3 hidden-xs">
            <div class="box">
                <div class="box-heading">Account</div>
                <div class="list-group">

                    <a href="indexe223.html?route=account/login" class="list-group-item">Login </a> <a
                        href="index5502.html?route=account/register" class="list-group-item">Register</a> <a
                        href="indexacda.html?route=account/forgotten" class="list-group-item">Forgotten Password </a>

                    <a href="indexe223.html?route=account/account" class="list-group-item">My Account </a>

                    <a href="indexe223.html?route=account/address" class="list-group-item">Address Book</a> <a
                        href="indexe223.html?route=account/wishlist" class="list-group-item">Wish List </a> <a
                        href="indexe223.html?route=account/order" class="list-group-item">Order History </a> <a
                        href="indexe223.html?route=account/download" class="list-group-item">Downloads </a><a
                        href="indexe223.html?route=account/recurring" class="list-group-item">Recurring payments </a> <a
                        href="indexe223.html?route=account/reward" class="list-group-item">Reward Points </a> <a
                        href="indexe223.html?route=account/return" class="list-group-item">Returns </a> <a
                        href="indexe223.html?route=account/transaction" class="list-group-item">Transactions </a> <a
                        href="indexe223.html?route=account/newsletter" class="list-group-item">Newsletter </a>

                </div>
            </div>

            <div class="box">
                <div class="box-heading">Information</div>
                <div class="list-group">
                    <a class="list-group-item" href="index8816.html?route=information/information&amp;information_id=4">About
                        Us </a>
                    <a class="list-group-item" href="index1766.html?route=information/information&amp;information_id=6">Delivery
                        Information </a>
                    <a class="list-group-item" href="index1679.html?route=information/information&amp;information_id=3">Privacy
                        Policy </a>
                    <a class="list-group-item" href="index99e4.html?route=information/information&amp;information_id=5">Terms
                        &amp; Conditions </a>
                    <a class="list-group-item" href="index2724.html?route=information/contact">Contact Us </a>
                    <a class="list-group-item" href="index7cb2.html?route=information/sitemap">Site Map </a>
                </div>
            </div>
        </aside>

        <div id="content" class="col-sm-9">
            <%  HttpSession sesr = request.getSession();

                if (sesr.getAttribute("ERRO")!=null){
            %>
            <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> Warning: The
                E-Mail Address was not found in our records, please try again!
            </div>
            <%}%>
            <h1>Forgot Your Password?</h1>
            <p>Enter the e-mail address associated with your account. Click submit to have a password reset link
                e-mailed to you.</p>
            <form action="<%=Util.fullPath("ForgotSendMail")%>" method="post" class="form-horizontal">
                <fieldset>
                    <legend>Your E-Mail Address</legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email">E-Mail Address</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" value="" placeholder="E-Mail Address" id="input-email"
                                   class="form-control"/>
                        </div>
                    </div>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="<%=Util.fullPath("Login")%>" class="btn btn-default">Back</a></div>
                    <div class="pull-right">
                        <input type="submit" value="Continue" class="btn btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body>
<!-- Mirrored from demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/forgotten by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Oct 2019 15:42:56 GMT -->
</html>
