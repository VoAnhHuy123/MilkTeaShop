<%--
  Created by IntelliJ IDEA.
  User: Bo Biet Bay
  Date: 12/19/2019
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<body>
<div class="row row-style-2">
    <div class="col-lg-8 has-padding">
        <div class="panel panel-default payment">

            <div class="panel-body">
                <form class="form-horizontal hide-block" role="form" id="form-payment" action="/checkout/payment/place_order" method="post">
                    <input type="hidden" name="region_name" value="">
                    <input type="hidden" name="city_name" value="">
                    <input type="hidden" name="current_plan" value="1">

                    <h3 class="step-title">1. Chọn hình thức giao hàng</h3>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div id="panel-shipping-plan">


                                <script>
                                    window.shippingPlanCode = '1';
                                </script>
                                <!--    supportedShippingPlans -->

                                <div class="form-group row row-style-3" id="shipping-1">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap">
                                            <div class="iradio_square-blue checked" style="position: relative;"><input checked="" type="radio" name="shipping_plan" value="1" id="plan-1" class="icheck plan" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>
                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-10">
                                        <label for="plan-1" class="control-label is-large">
                                            <!-- Name, Estimate Time, Fee -->
                                            <!-- // normal orders -->
                                            <div class="shipping-method-option">
                                                <div class="shipping-method-option__leadtime">
                                                    Giao vào Thứ ba, 07/01                            </div>
                                                <div class="shipping-method-option__info" style="display: flex; align-items: flex-end;">

                                    <span class="shipping-method-option__info__price">
                                            18.000đ                                        </span>
                                                    <span class="shipping-method-option__info__name" style="display: flex; align-items: baseline;">
                                    Giao hàng tiêu chuẩn                                </span>
                                                </div>
                                                <!--<div class="shipping-method-option__earned-text">--><!-- - <a href="javascript:" data-toggle="modal" data-target="#tftEarnedModal">Chi tiết</a></div>-->
                                            </div>


                                            <!--<hr/>-->
                                        </label>


                                    </div>
                                </div>

                                <!-- Multiple Shipment -->
                                <div class="multi-shipment">
                                    <ul class="multi-shipment__items">
                                    </ul>
                                </div>


                                <!--    unsupportedShippingPlans -->

                            </div>
                        </div>
                    </div>

                    <!-- Installation 4h -->
                    <!-- End Installation 4h -->



                    <h3 class="step-title">2. Thanh toán bằng Tiki Xu</h3>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="checkbox tiki-checkbox">
                                    <input id="checkbox_payment_method_tikixu" type="checkbox" name="payment_method_tikixu" value="1928">
                                    <label for="checkbox_payment_method_tikixu">
                                        Sử dụng 1.928 Xu (ứng với 1.928đ) để thanh toán.
                                    </label>
                                </div>

                                <span style="display: block; padding-left: 52px; font-size: 13px; pointer-events: auto; opacity: 1">Bạn có Phiếu quà tặng Tiki/Got lt/UrBox muốn đổi thành Tiki Xu? <a href="https://tiki.vn/customer/reward">Nhập tại đây</a></span>
                            </div>
                        </div>
                    </div>


                    <div id="choose_payment_method" class="">
                        <h3 class="step-title">3. Chọn hình thức thanh toán</h3>
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <!--promotion method, cod, zalopay, momo-->


                                <div class="form-group row row-style-3  method_payment_cod">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap">
                                            <div class="iradio_square-blue" style="position: relative;"><input type="radio" name="selected_payment_method" value="cod" id="cod" class="icheck js-icheck payment-method" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>

                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
                                        <label for="cod" class="control-label is-large">
                                            Thanh toán tiền mặt khi nhận hàng        </label>

                                    </div>
                                </div>

                                <!--promotion method, cod, zalopay, momo-->


                                <div class="form-group row row-style-3  ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap">
                                            <div class="iradio_square-blue" style="position: relative;"><input type="radio" name="selected_payment_method" value="cybersource" id="cybersource" class="icheck js-icheck-3 payment-method" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>

                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
                                        <label for="cybersource" class="control-label is-large">
                                            Thanh toán bằng thẻ quốc tế Visa, Master, JCB        </label>

                                    </div>
                                </div>

                                <!--promotion method, cod, zalopay, momo-->


                                <div class="form-group row row-style-3  ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap">
                                            <div class="iradio_square-blue" style="position: relative;"><input type="radio" name="selected_payment_method" value="pay123" id="pay123" class="icheck js-icheck payment-method" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>

                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
                                        <label for="pay123" class="control-label is-large">
                                            Thẻ ATM nội địa/Internet Banking (Miễn phí thanh toán)        </label>

                                    </div>
                                </div>

                                <!--123pay method-->
                                <div class="form-group row row-style-3 js-payment-sub">
                                    <div class="col-lg-11 col-lg-offset-1 col-md-12 col-sm-12 col-xs-12">
                                        <div class="panel panel-default payment-sub is-small js-atm-list">
                                            <div class="panel-body">
                                                <input type="hidden" name="atm-id">
                                                <ul class="bank">
                                                    <li><a title="Vietinbank" href="javascript:void(0)" class="li-bank" data-atm-id="48"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VTB.jpg?v=2" height="74" width="120" alt="Vietinbank"></a></li>
                                                    <li><a title="Vietcombank" href="javascript:void(0)" class="li-bank" data-atm-id="49"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VCB.jpg?v=2" height="74" width="120" alt="Vietcombank"></a></li>
                                                    <li><a title="Sacombank" href="javascript:void(0)" class="li-bank" data-atm-id="50"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/SCB.jpg?v=2" height="74" width="120" alt="Sacombank"></a></li>
                                                    <li><a title="SCB" href="javascript:void(0)" class="li-bank" data-atm-id="51"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/SGCB.jpg?v=2" height="74" width="120" alt="SCB"></a></li>
                                                    <li><a title="Eximbank" href="javascript:void(0)" class="li-bank" data-atm-id="52"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/EIB.jpg?v=2" height="74" width="120" alt="Eximbank"></a></li>
                                                    <li><a title="BIDV" href="javascript:void(0)" class="li-bank" data-atm-id="53"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/BIDV.jpg?v=2" height="74" width="120" alt="BIDV"></a></li>
                                                    <li><a title="DongA Bank" href="javascript:void(0)" class="li-bank" data-atm-id="54"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/DAB.jpg?v=2" height="74" width="120" alt="DongA Bank"></a></li>
                                                    <li><a title="ACB" href="javascript:void(0)" class="li-bank" data-atm-id="55"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/ACB.jpg?v=2" height="74" width="120" alt="ACB"></a></li>
                                                    <li><a title="MBBank" href="javascript:void(0)" class="li-bank" data-atm-id="56"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/MB.jpg?v=2" height="74" width="120" alt="MBBank"></a></li>
                                                    <li><a title="Techcombank" href="javascript:void(0)" class="li-bank" data-atm-id="57"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/TCB.jpg?v=2" height="74" width="120" alt="Techcombank"></a></li>
                                                    <li><a title="VPBank" href="javascript:void(0)" class="li-bank" data-atm-id="58"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VPB.jpg?v=2" height="74" width="120" alt="VPBank"></a></li>
                                                    <li><a title="VIB" href="javascript:void(0)" class="li-bank" data-atm-id="59"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VIB.jpg?v=2" height="74" width="120" alt="VIB"></a></li>
                                                    <li><a title="HDBank" href="javascript:void(0)" class="li-bank" data-atm-id="60"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/HDB.jpg?v=2" height="74" width="120" alt="HDBank"></a></li>
                                                    <li><a title="Oceanbank" href="javascript:void(0)" class="li-bank" data-atm-id="61"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/OJB.jpg?v=2" height="74" width="120" alt="Oceanbank"></a></li>
                                                    <li><a title="SHB " href="javascript:void(0)" class="li-bank" data-atm-id="62"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/SHB.jpg?v=2" height="74" width="120" alt="SHB "></a></li>
                                                    <li><a title="SeABank" href="javascript:void(0)" class="li-bank" data-atm-id="63"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/SEAB.jpg?v=2" height="74" width="120" alt="SeABank"></a></li>
                                                    <li><a title="ABBank" href="javascript:void(0)" class="li-bank" data-atm-id="64"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/ABB.jpg?v=2" height="74" width="120" alt="ABBank"></a></li>
                                                    <li><a title="TPBank" href="javascript:void(0)" class="li-bank" data-atm-id="65"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/TPB.jpg?v=2" height="74" width="120" alt="TPBank"></a></li>
                                                    <li><a title="LienVietPostBank" href="javascript:void(0)" class="li-bank" data-atm-id="66"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/LPB.jpg?v=2" height="74" width="120" alt="LienVietPostBank"></a></li>
                                                    <li><a title="SAIGONBANK" href="javascript:void(0)" class="li-bank" data-atm-id="67"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/SGB.jpg?v=2" height="74" width="120" alt="SAIGONBANK"></a></li>
                                                    <li><a title="Nam A Bank" href="javascript:void(0)" class="li-bank" data-atm-id="69"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/NAB.jpg?v=2" height="74" width="120" alt="Nam A Bank"></a></li>
                                                    <li><a title="VietABank" href="javascript:void(0)" class="li-bank" data-atm-id="70"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VAB.jpg?v=2" height="74" width="120" alt="VietABank"></a></li>
                                                    <li><a title="NCB" href="javascript:void(0)" class="li-bank" data-atm-id="71"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/NCB.jpg?v=2" height="74" width="120" alt="NCB"></a></li>
                                                    <li><a title="BaoVietBank" href="javascript:void(0)" class="li-bank" data-atm-id="72"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/BVB.jpg?v=2" height="74" width="120" alt="BaoVietBank"></a></li>
                                                    <li><a title="GPBank" href="javascript:void(0)" class="li-bank" data-atm-id="73"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/GPB.jpg?v=2" height="74" width="120" alt="GPBank"></a></li>
                                                    <li><a title="BAC A BANK" href="javascript:void(0)" class="li-bank" data-atm-id="74"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/NASB.jpg?v=2" height="74" width="120" alt="BAC A BANK"></a></li>
                                                    <li><a title="Maritime Bank	" href="javascript:void(0)" class="li-bank" data-atm-id="76"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/MSB.jpg?v=2" height="74" width="120" alt="Maritime Bank	"></a></li>
                                                    <li><a title="PG Bank" href="javascript:void(0)" class="li-bank" data-atm-id="77"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/PGB.jpg?v=2" height="74" width="120" alt="PG Bank"></a></li>
                                                    <li><a title="Bản Việt" href="javascript:void(0)" class="li-bank" data-atm-id="78"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VCCB.jpg?v=2" height="74" width="120" alt="Bản Việt"></a></li>
                                                    <li><a title="KienLongBank" href="javascript:void(0)" class="li-bank" data-atm-id="79"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/KLB.jpg?v=2" height="74" width="120" alt="KienLongBank"></a></li>
                                                    <li><a title="PVComBank" href="javascript:void(0)" class="li-bank" data-atm-id="80"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/PVCB.jpg?v=2" height="74" width="120" alt="PVComBank"></a></li>
                                                    <li><a title="PublicBankVietNam" href="javascript:void(0)" class="li-bank" data-atm-id="81"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/PBVN.jpg?v=2" height="74" width="120" alt="PublicBankVietNam"></a></li>
                                                    <li><a title="VRB" href="javascript:void(0)" class="li-bank" data-atm-id="82"><img src="https://salt.tikicdn.com/assets/img/zalopaygw/VRB.jpg?v=2" height="74" width="120" alt="VRB"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--promotion method, cod, zalopay, momo-->


                                <div class="form-group row row-style-3  ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap">
                                            <div class="iradio_square-blue checked" style="position: relative;"><input type="radio" name="selected_payment_method" value="momo" id="momo" class="icheck js-icheck payment-method" checked="checked" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>

                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
                                        <label for="momo" class="control-label is-large">
                                            Thanh toán bằng ví MoMo - <a class="detail-discount-payment-checkout" target="_blank" href="https://tiki.vn/chuong-trinh/momo-tiki-now" data-placement="bottom" data-original-title="" title="" data-toggle="tooltip" data-title="Tải Ví MoMo săn voucher ngẫu nhiên lên đến 1 triệu khi nhập mã TIKIMOMO1000, dành cho khách hàng lần đầu liên kết ngân hàng.">Chi tiết</a>        </label>

                                        <span class="payment-warning">Tải Ví MoMo săn voucher ngẫu nhiên lên đến 1 triệu khi nhập mã TIKIMOMO1000, dành cho khách hàng lần đầu liên kết ngân hàng.</span>
                                    </div>
                                </div>

                                <!--promotion method, cod, zalopay, momo-->


                                <div class="form-group row row-style-3 exceeded ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                        <label for="default" class="icheck-wrap exceeded">
                                            <div class="iradio_square-blue disabled" style="position: relative;"><input disabled="" type="radio" name="selected_payment_method" value="tac_shinhan_10_150_1100_oct" id="tac_shinhan_10_150_1100_oct" class="icheck js-icheck-3 payment-method" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                        </label>
                                    </div>

                                    <div class="col-lg-11 col-md-11 col-sm-11 col-xs-12 pad-right-10">
                                        <label for="tac_shinhan_10_150_1100_oct" class="control-label is-large exceeded">
                                            <span class="favorable">ưu đãi</span>
                                            Thẻ tín dụng Shinhan Bank giảm 10% tối đa 150.000 đồng cho đơn hàng từ 1.100.000 đồng - <a href="https://tiki.vn/chuong-trinh/uu-dai-shinhanbank-thang-10-2019" class="detail-discount-payment-checkout" data-placement="bottom" data-original-title="" title="" data-toggle="tooltip" data-title="Thẻ tín dụng Shinhan Bank giảm 10% tối đa 150.000 đồng cho đơn hàng từ 1.100.000 đồng, áp dụng tất cả các sản phẩm của TIKI trừ Vé máy bay, Phiếu quà tặng, Dịch vụ Tiện ích (Thẻ cào điện thoại, thẻ game,...), Tã, bỉm, sữa, thực phẩm ăn dặm, Bia, Mì gói; không áp dụng kèm với ưu đãi nhập mã coupon khác">Chi tiết</a>        </label>

                                        <span class="payment-warning">Chưa đến thời gian tham gia chương trình hoặc số lượng đơn hàng ưu đãi đã hết!</span>
                                    </div>
                                </div>



                                <!--cyber method-->
                                <div class="form-group row row-style-3 js-payment-sub js-cybersource-group" style="display: none;">
                                    <div class="col-lg-11 col-lg-offset-1 col-md-12 col-sm-12 col-xs-12">
                                        <div class="panel panel-default payment-sub is-small">
                                            <div class="panel-body">
                                                <div class="cybersource-form" id="paymentDetailsSection">
                                                    <div id="frm-cybersource-token" class="div-cybersource-method">
                                                    </div>

                                                    <div id="frm-cybersource-card" class="div-cybersource-method">
                                                        <div class="form-group is-modified">
                                                            <label for="new-card" class="icheck-wrap">
                                                                <div class="iradio_square-blue checked" style="position: relative;"><input class="icheck js-icheck-2 input-cybersouce-method" value="" type="radio" name="payment_token" id="new-card" checked="" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                            </label>
                                                            <label class="is-style-2" for="new-card">Nhập số thẻ mới</label>
                                                            <label class="new-group card-credit-list" for="new-card">
                                                                <span class="card-credit card-visa is-active"></span><span class="card-credit card-mastercard is-active"></span><span class="card-credit card-jcb is-active"></span>
                                                            </label>
                                                            <div class="new-group-sub" style="display:block">
                                                                <div class="form-group" id="div-card-num">
                                                                    <label for="card_number">Số thẻ:</label>
                                                                    <input type="text" class="form-control" id="card_number" name="card_number" placeholder="VD: 4123 4567 8901 2345" value="">
                                                                    <span class="help-block"></span>
                                                                </div>
                                                                <div class="form-group" id="select-card-type">
                                                                    <label class="select-card-type-title">Loại thẻ</label>
                                                                    <label for="select-card-type-radio-1" class="icheck-wrap select-card-type-item is-visa">
                                                                        <div class="iradio_square-blue" style="position: relative;"><input class="icheck" id="select-card-type-radio-1" type="radio" name="input-card-type" value="visa" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                                        <span>Visa</span>
                                                                    </label>
                                                                    <label for="select-card-type-radio-2" class="icheck-wrap select-card-type-item is-master">
                                                                        <div class="iradio_square-blue" style="position: relative;"><input class="icheck" id="select-card-type-radio-2" type="radio" name="input-card-type" value="mastercard" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                                        <span>Master</span>
                                                                    </label>
                                                                    <label for="select-card-type-radio-3" class="icheck-wrap select-card-type-item is-jcb">
                                                                        <div class="iradio_square-blue" style="position: relative;"><input class="icheck" id="select-card-type-radio-3" type="radio" name="input-card-type" value="jcb" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                                        <span>JCB</span>
                                                                    </label>
                                                                    <span class="help-block"></span>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="bill_to_name">Tên in trên thẻ:</label>
                                                                    <input type="text" class="form-control" id="bill_to_name" name="bill_to_name" placeholder="vd: Nguyen Van A" value="">
                                                                </div>
                                                                <div class="form-group" id="select-card-date">
                                                                    <label for="">Ngày hết hạn:</label>
                                                                    <div class="end-date-cvc">
                                                                        <input type="text" id="card_expiry" class="form-control is-small-2 expiry-date-input-fake" value="" placeholder="MM/YY" autocomplete="off">
                                                                        <input type="hidden" name="card_expiry_date" value="">
                                                                    </div>
                                                                    <span class="help-block"></span>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Mã bảo mật:</label>
                                                                    <div class="end-date-cvc">
                                                                        <input type="text" class="form-control is-small-2" id="card_cvn" name="card_cvn" placeholder="VD: 123" value="" autocomplete="off">
                                                                        <i class="cvc-hint-icon"></i>
                                                                    </div>
                                                                    <span class="help-block"></span>
                                                                </div>
                                                                <div class="form-group has-margin">
                                                                    <label for="card_save" class="icheck-wrap is-style-3">
                                                                        <div class="icheckbox_square-blue checked" style="position: relative;"><input name="" type="checkbox" id="card_save" class="icheck" value="1" checked="" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                                    </label>
                                                                    <label for="card_save" class="is-style-3">Lưu và bảo mật thẻ cho lần thanh toán sau</label>
                                                                    <label style="margin-top: 5px" class="is-style-3"><i>Tiki không trực tiếp lưu thẻ của bạn. Để đảm bảo an toàn, thông tin thẻ của bạn chỉ được lưu bởi CyberSource, công ty quản lý thanh toán lớn nhất thế giới (thuộc tổ chức VISA)</i></label>
                                                                </div>
                                                                <div class="credit-card-guide-wrap hidden-xs hidden-sm">
                                                                    <span class="credit-card-guide"></span>
                                                                    <p class="note">Vui lòng chú ý kiểm tra tin nhắn nếu có yêu cầu.</p>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <input type="hidden" name="bin_code" value="">
                                                        <input type="hidden" name="signed_field_names" value="access_key,profile_id,transaction_uuid,signed_field_names,unsigned_field_names,signed_date_time,locale,transaction_type,reference_number,amount,currency,bill_to_forename,bill_to_surname,bill_to_email,bill_to_address_line1,bill_to_address_city,bill_to_address_country,customer_ip_address,payment_method,device_fingerprint_id">
                                                        <input type="hidden" name="bill_to_forename" value="Vo">
                                                        <input type="hidden" name="bill_to_surname" value="Huy">
                                                        <input type="hidden" name="bill_to_email" value="huyvo2581999@gmail.com">
                                                        <input type="hidden" name="bill_to_address_line1" value="kjkj">
                                                        <input type="hidden" name="bill_to_address_line2" value="Xa Phu Lam. Huyen Yen Son">
                                                        <input type="hidden" name="bill_to_address_city" value="Tuyen Quang">
                                                        <input type="hidden" name="bill_to_address_country" value="VN">
                                                        <input type="hidden" name="unsigned_field_names" value="card_number,card_expiry_date,card_type,card_cvn">
                                                        <input type="hidden" name="payment_method" value="card">
                                                        <input type="hidden" name="card_type" value="002">
                                                        <input type="hidden" name="transaction_type" value="sale">
                                                        <input type="hidden" name="bill_to_phone" value="0937339896">
                                                    </div>
                                                    <span style="color: #b7071e;display: block;font-size: 11px;margin-left: 5px;margin-top: 12px;max-width: none;width: auto;" class="help-block is-modified" id="valid-failed"></span>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <input type="hidden" name="access_key" value="580346837bfb3818bb65c93085203a62">
                                <input type="hidden" name="profile_id" value="02D670EC-C51B-44AD-8FC8-B4D79F43752A">
                                <input type="hidden" name="transaction_uuid" value="d8c95ab2-6228-4778-87c4-4f4c3f834b63">
                                <input type="hidden" name="reference_number" value="222660135678833">
                                <input type="hidden" name="device_fingerprint_id" value="30129f7eff98fe55f3dcf569eb53c600">
                                <input type="hidden" name="customer_ip_address" value="14.161.50.191">
                                <input type="hidden" name="signed_date_time" value="2019-12-30T06:22:35Z">
                                <input type="hidden" name="locale" value="vi-VN">
                                <input type="hidden" name="currency" value="vnd">
                                <input type="hidden" name="amount" value="79000">
                                <input type="hidden" name="signature">                                    <input type="hidden" name="is_use_gateway_trial" value="1">
                            </div>
                        </div>
                    </div>


                    <!-- Sent As Gift -->
                    <div class="form-group row row-style-3">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                            <label class="icheck-wrap">
                                <input type="hidden" name="is_sent_as_gift" value="0">
                                <div class="icheckbox_square-blue" style="position: relative;"><input for="icheck-11" name="is_sent_as_gift" type="checkbox" id="icheck-11" class="icheck js-icheck" value="1" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            </label>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                            <label for="icheck-11" class="control-label is-large">Gửi quà tặng đến bạn bè, người thân</label>
                        </div>
                    </div>

                    <div class="content-gift row-style-3 js-payment-sub">
                        <h3 class="step-title">4. Thông tin quà tặng</h3>
                        <div class="panel panel-default step-4">
                            <div class="panel-body">
                                <div class="payment-wrap-gift">
                                    <div class="form-group row row-style-3">
                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                            <label class="icheck-wrap">
                                                <input type="hidden" name="is_gift_wrapping" value="0">
                                                <div class="icheckbox_square-blue disabled" style="position: relative;"><input for="icheck-12" name="is_gift_wrapping" disabled="" type="checkbox" id="icheck-12" class="icheck js-icheck" value="1" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                            </label>
                                        </div>
                                        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 payment-wrap-gift__label">
                                            <label for="icheck-12" class="control-label is-large">
                                                Gói quà (30.000 đ)
                                            </label>
                                            <a href="javascript:void(0)" data-html="true" data-content="Phí gói quà đối với tài khoản có Tikinow là 15.000đ, đối với tài khoản thường là 30.000đ" data-toggle="popover" class="info-price" data-trigger="focus" data-placement="bottom" data-original-title="" title="">
                                                <i class="fa" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="payment-wrap-gift__content">
                                        <ul class="payment-wrap-gift__items payment-wrap__gift--hover">
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/b6/c6/69/e146f7917cf18bda1ac3c3681db4f34f.jpg" alt="Gói quà " height="60" width="60">
                                                    </span>
                                            </li>
                                        </ul>
                                        <p class="payment-wrap-gift__note">* Giấy gói quà được chọn ngẫu nhiên một trong những mẫu trên.</p>
                                        <div class="payment-wrap-gift__content-hover">
                                            <img src="https://salt.tikicdn.com/cache/200x280/ts/product/b6/c6/69/e146f7917cf18bda1ac3c3681db4f34f.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="content-gift row-style-3">
                                        <ul class="payment-wrap-gift__items">
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/b6/c6/69/e146f7917cf18bda1ac3c3681db4f34f.jpg" alt="Gói quà " height="60" width="60">
                                                    </span>
                                            </li>
                                        </ul>
                                        <p class="payment-wrap-gift__note">* Giấy gói quà được chọn ngẫu nhiên một trong những mẫu trên.</p>
                                    </div>
                                </div>
                                <div class="payment-wrap-card-gift">
                                    <div class="form-group row row-style-3">
                                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                                            <label class="icheck-wrap">
                                                <input type="hidden" name="is_using_card" value="0">
                                                <div class="icheckbox_square-blue" style="position: relative;"><input for="icheck-13" name="is_using_card" type="checkbox" id="icheck-13" class="icheck js-icheck" value="1" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                            </label>
                                        </div>
                                        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 payment-wrap-card-gift__label">
                                            <label for="icheck-13" class="control-label is-large">Thiệp mừng (15.000 đ)</label>
                                            <a href="javascript:void(0)" data-html="true" data-content="• Tiki sẽ in lời nhắn của bạn trên thiệp. Nếu bạn không chọn ô thiệp mừng, chúng tôi sẽ in lời nhắn của bạn (nếu có) lên trên hóa đơn.</br>• Phí in thiệp mừng đối với tài khoản có Tikinow là 10.000đ, đối với tài khoản thường là 15.000đ" data-toggle="popover" class="info-price" data-trigger="focus" data-placement="bottom" data-original-title="" title="">
                                                <i class="fa" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="payment-wrap-gift__content">
                                        <ul class="payment-wrap-card-gift__items payment-wrap__gift--hover">
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/d8/f2/29/dcef17feb5ca990da253c7e46137bca6.jpg" alt="Thiệp Mừng Mẫu 1" height="60" width="60">
                                                    </span>
                                            </li>
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/72/f7/38/a08b4fa1a03805a8703aa498880d0616.jpg" alt="Thiệp Mừng Mẫu 2" height="60" width="60">
                                                    </span>
                                            </li>
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/2b/45/6b/ae9c637afe69029f791931016635d35d.jpg" alt="Thiệp Mừng" height="60" width="60">
                                                    </span>
                                            </li>
                                        </ul>
                                        <p class="payment-wrap-gift__note">* Thiệp mừng được chọn ngẫu nhiên một trong những mẫu trên.</p>
                                        <!-- <div class="payment-wrap-gift__content-hover">
                                        <img src="https://salt.tikicdn.com/cache/200x280/ts/product/2b/45/6b/ae9c637afe69029f791931016635d35d.jpg" alt="">
                                    </div> -->
                                    </div>
                                    <div class="content-gift row-style-3 js-payment-sub">
                                        <ul class="payment-wrap-card-gift__items">
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/d8/f2/29/dcef17feb5ca990da253c7e46137bca6.jpg" alt="Thiệp Mừng Mẫu 1" height="60" width="60">
                                                    </span>
                                            </li>
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/72/f7/38/a08b4fa1a03805a8703aa498880d0616.jpg" alt="Thiệp Mừng Mẫu 2" height="60" width="60">
                                                    </span>
                                            </li>
                                            <li class="payment-wrap-gift__item">
                                                    <span class="payment-wrap-gift__img">
                                                    <img src="https://salt.tikicdn.com/cache/100x100/ts/product/2b/45/6b/ae9c637afe69029f791931016635d35d.jpg" alt="Thiệp Mừng" height="60" width="60">
                                                    </span>
                                            </li>
                                        </ul>
                                        <p class="payment-wrap-gift__note">* Thiệp mừng được chọn ngẫu nhiên một trong những mẫu trên.</p>
                                    </div>
                                </div>
                                <div class="form-group row row-style-3">
                                    <div class="label-left">
                                        <b>Gửi từ</b>
                                    </div>
                                    <div class="content-right">
                                        <input type="text" placeholder="Tên người gửi" name="gift_from" id="from_birthday" class="form-control" value="" maxlength="30">
                                        <b class="gift-to">Tới</b>
                                        <input type="text" placeholder="Tên người nhận" name="gift_to" id="to_birthday" class="form-control" value="" maxlength="30">
                                    </div>
                                </div>
                                <div class="form-group row row-style-3">
                                    <div class="label-left">
                                        <b>Lời nhắn</b>
                                    </div>
                                    <div class="content-right">
                                        <textarea type="text" name="gift_message" placeholder="Ví dụ: Chúc mừng sinh nhật bạn. (Tối đa 200 ký tự)" id="mess_birthday" class="form-control" maxlength="200"></textarea>
                                        <p class="error_mess">Lời nhắn không được trống và không quá 200 ký tự</p>
                                        <br>
                                        <span>* Hóa đơn của đơn hàng này sẽ không in giá.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-group row row-style-3 js-payment-sub">
                        <div class="col-lg-11 col-lg-offset-1 col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-default payment-sub">
                                <div class="panel-body">
                                    <h5>Nếu bạn gửi hàng cho người khác, vui lòng nhập vào Họ tên &amp; Số điện thoại của chính bạn để Tiki tiện liên lạc.</h5>
                                    <div class="form-group row row-style-4">
                                        <label for="" class="col-lg-2 control-label visible-lg-block">Họ và Tên</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="infoUserBilling[full_name]" value="Võ Huy" placeholder="Họ và Tên" id="full_name" class="form-control infoUserBilling" data-error="Vui lòng nhập họ tên" required="required">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row row-style-4 end">
                                        <label for="" class="col-lg-2 control-label visible-lg-block">Số điện thoại</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="infoUserBilling[telephone]" value="0937339896" placeholder="Số điện thoại" id="telephone" class="form-control infoUserBilling" data-error="Vui lòng nhập số điện thoại">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-group row row-style-3 js-payment-sub">
                        <div class="col-lg-11 col-lg-offset-1 col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-default payment-sub">
                                <div class="panel-body">
                                    <div class="form-group row row-style-4" id="tax_name">
                                        <label for="company" class="col-lg-3 control-label visible-lg-block">Tên công ty</label>
                                        <div class="col-lg-6">
                                            <input type="text" name="tax_company_name" placeholder="Ít nhất 2 từ" id="company" class="form-control infoOrderCompany hasNote" value="" data-error="Vui lòng nhập tên công ty">
                                            <span class="help-block"></span>
                                        </div>
                                        <span style="display: none; font-size: 11px; color: red;">Vui lòng chỉ nhập Tên công ty.<br>Không nhập lại Loại hình doanh nghiệp</span>
                                    </div>

                                    <div class="form-group row row-style-4">
                                        <label for="tax" class="col-lg-3 control-label visible-lg-block">Mã số thuế</label>
                                        <div class="col-lg-6">
                                            <input type="tel" name="tax_company_code" placeholder="Mã số thuế" id="tax" class="form-control infoOrderCompany" value="" data-error="Chỉ chấp nhận ký tự - và  ký tự số">
                                            <span class="help-block"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row row-style-4 ">
                                        <label for="street" class="col-lg-3 control-label visible-lg-block">Địa chỉ</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control infoOrderCompany hasNote" name="tax_company_address" id="street" cols="30" rows="4" data-error="Vui lòng nhập địa chỉ" placeholder="Nhập địa chỉ công ty (bao gồm Phường/Xã, Quận/Huyện, Tỉnh/Thành phố nếu có)"></textarea>
                                            <span class="help-block"></span>
                                        </div>
                                        <span style="display: none; font-size: 11px; color: red;">Vui lòng chỉ nhập Số nhà, Tên đường,<br>Tên phường (nếu có).<br>Không nhập lại Quận/Huyện và<br>Tỉnh/Thành phố</span>
                                    </div>
                                </div>
                            </div>

                            <div class="tax-notice">
                                <div class="title">Lưu ý:</div>
                                <ul>
                                    <li>Đối với sản phẩm thuộc các nhà cung cấp khác, quý khách sẽ được hỗ trợ xuất hóa đơn trong vòng 14 ngày kể từ thời điểm nhận hàng thành công và không phát sinh nhu cầu đổi trả.</li>
                                    <li>
                                        Các mặt hàng sau đây trong đơn hàng của bạn không được hỗ trợ xuất hoá đơn
                                        <ul>
                                            <li>
                                                <b><span>1 x Túi 100 Quả Bóng Nhựa Cho Bé Vui Chơi</span></b> - Cung cấp bởi Hoàng Lâm Phong Thủy                                                </li>
                                        </ul>
                                    </li>
                                    <li>Trường hợp khách hàng không nhập thông tin hóa đơn, Tiki sẽ xuất hóa đơn theo thông tin mua hàng</li>
                                    <li>Tiki từ chối xử lý các yêu cầu phát sinh trong việc kê khai thuế đối với những hóa đơn từ 20 triệu đồng trở lên thanh toán bằng tiền mặt</li>
                                </ul>

                            </div>
                        </div>
                    </div>

                    <div id="bookcare-option">

                    </div>

                    <div class="form-group row end">
                        <div class="col-lg-6">
                            <button type="button" id="btn-placeorder" class="btn btn-block btn-default btn-checkout" admicro-data-event="100118" admicro-data-auto="1" admicro-data-order="false">ĐẶT MUA</button>
                            <p class="note">(Xin vui lòng kiểm tra lại đơn hàng trước khi Đặt Mua)</p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="panel panel-default cart">
            <div class="panel-body">
                <div class="order">
                        <span class="title">
                                                            Địa chỉ giao hàng
                                                    </span>
                    <a href="https://tiki.vn/checkout/shipping" class="btn btn-default btn-custom1">Sửa</a>
                </div>
                <div class="information">
                    <h6>Võ Huy</h6>
                    <p class="end">kjkj, Xã Phú Lâm, Huyện Yên Sơn, Tuyên Quang<br>Việt Nam<br>Điện thoại: 0937339896</p>
                </div>
            </div>
        </div>
        <div id="panel-cart">
            <div class="panel panel-default cart">
                <div class="panel-body">
                    <div class="order">
                        <span class="title">Đơn Hàng</span>
                        <span class="title"> (1 sản phẩm)</span>

                        <a href="/checkout/cart/" class="btn btn-default btn-custom1">Sửa</a>
                    </div>
                    <div class="product">
                        <div class="item">
                            <p class="title">
                                <strong>1 x</strong><a href="https://tiki.vn/tui-100-qua-bong-nhua-cho-be-vui-choi-p13147127.html?spid=16841809" target="_blank">Túi 100 Quả Bóng Nhựa Cho Bé Vui Chơi</a>
                                <span class="seller-by">
                                    Cung cấp bởi <strong class="firm">Hoàng Lâm Phong Thủy</strong>
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
        <!-- Tam thoi khong hien thi THoi GIan GIao Hang du kien - Theo Yeu cau cua PM quang.nguyendang -->


    </div>
</div>
</body>
</html>
