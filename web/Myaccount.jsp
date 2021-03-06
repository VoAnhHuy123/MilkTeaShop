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
    <title>Account Login</title>
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


<body class="account-account layout-2 left-col">
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
<div id="account-account" class="container">
    <ul class="breadcrumb">
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=common/home"><i class="fa fa-home"></i></a></li>
        <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/account">Account</a></li>
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
            <h2>My Account</h2>
            <ul class="list-unstyled">
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/edit">Edit your account information</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/password">Change your password</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address">Modify your address book entries</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/wishlist">Modify your wish list</a></li>
            </ul>
            <h3>My Orders</h3>
            <ul class="list-unstyled">
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/order">View your order history</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/download">Downloads</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/reward">Your Reward Points</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/return">View your return requests</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/transaction">Your Transactions</a></li>
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/recurring">Recurring payments</a></li>
            </ul>
            <h3>My Affiliate Account</h3>
            <ul class="list-unstyled">
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/affiliate/add">Register for an affiliate account</a></li>
            </ul>
            <h3>Newsletter</h3>
            <ul class="list-unstyled">
                <li><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/newsletter">Subscribe / unsubscribe to newsletter</a></li>
            </ul>
        </div>
    </div>
</div>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body></html>
