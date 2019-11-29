
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer>
    <div class="footerbefore">
        <div class="container">
            <?php echo $footerbefore; ?>
            <script>
                function subscribe()
                {
                    var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    var email = $('#txtemail').val();
                    if(email != "")
                    {
                        if(!emailpattern.test(email))
                        {
                            $('.text-danger').remove();
                            var str = '<span class="error">Invalid Email</span>';
                            $('#txtemail').after('<div class="text-danger">Invalid Email</div>');

                            return false;
                        }
                        else
                        {
                            $.ajax({
                                url: 'index.php?route=extension/module/newsletters/news',
                                type: 'post',
                                data: 'email=' + $('#txtemail').val(),
                                dataType: 'json',


                                success: function(json) {

                                    $('.text-danger').remove();
                                    $('#txtemail').after('<div class="text-danger">' + json.message + '</div>');

                                }

                            });
                            return false;
                        }
                    }
                    else
                    {
                        $('.text-danger').remove();
                        $('#txtemail').after('<div class="text-danger">Email Is Require</div>');
                        $(email).focus();

                        return false;
                    }
                }
            </script>

            <div class="newsletter">
                <div class="news-description">
                    <div class="news-title">Sign Up For Newsletter</div>
                    <div class="news-subtitle">...and receive $20 coupon for first shopping</div>
                </div>
                <div class="newsright">
                    <form action="#" method="post">
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-firstname">Email</label>
                            <div class="input-news">
                                <input type="email" name="txtemail" id="txtemail" value="" placeholder="Enter Your Email Address" class="form-control input-lg"  />
                            </div>
                            <div class="subscribe-btn">
                                <button type="submit" class="btn btn-default btn-lg" onclick="return subscribe();">Subscribe</i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="social-block">
                <ul>
                    <li class="facebook"><a href="#"><span>Facebook</span></a></li>
                    <li class="twitter"><a href="#"><span>Twitter</span></a></li>
                    <li class="youtube"><a href="#"><span>YouTube</span></a></li>
                    <li class="googleplus"><a href="#"><span>Google +</span></a></li>
                    <li class="instagram"><a href="#"><span>Instagram</span></a></li>
                </ul>
            </div>

        </div>
    </div>
    <div id="footer" class="container">

        <div class="row">
            <div class="footer-blocks">
                <div class="col-sm-3 column footerleft">
                    <div id="czfootercmsblock" class="footer-cms-block">
                        <div id="footerlogo">
                            <div class="service-area">
                                <div class="service-icon icon1"></div>
                                <div class="service-content">
                                    <div class="service-heading">Got Question? Call Us 24/7!</div>
                                </div>
                            </div>
                            <div class="footerdiv">
                                <div class="footer-title">(+01) 123 7589 23</div>
                                <div class="footerdesc">27 Lorem Ipsum, Dummy, Simply Consicuis 85fdg , Amet</div>
                                <div class="view-more"><a href="#">Find is On Map</a></div>
                                <div class="footer-logo">
                                    <h3 class="h3">Secured by:</h3>
                                    <div class="footercms-inner"><a href="#" class="footercms"><img src="image/catalog/cms-footer-1.png" alt="cms-footer1" class="footercms-image1"></a> <a href="#" class="footercms"><img src="image/catalog/cms-footer-2.png" alt="cms-footer2" class="footercms-image2"></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="paiement_logo_block footer-block">
                        <h4 class="title"><span class="payment-title">We using safe payments</span></h4>
                        <img src="image/catalog/visa.png" alt="visa" width="32" height="20">
                        <img src="image/catalog/discover.png" alt="discover" width="32" height="20">
                        <img src="image/catalog/american_express.png" alt="american_express" width="32" height="20">
                        <img src="image/catalog/google_wallet.png" alt="google_wallet" width="32" height="20">
                    </div>

                </div>
                <div id="info" class="col-sm-3 column">
                    <h5>Information</h5>
                    <ul class="list-unstyled">
                        <li><a href="index8816.html?route=information/information&amp;information_id=4">About Us</a></li>
                        <li><a href="index1766.html?route=information/information&amp;information_id=6">Delivery Information</a></li>
                        <li><a href="index1679.html?route=information/information&amp;information_id=3">Privacy Policy</a></li>
                        <li><a href="index99e4.html?route=information/information&amp;information_id=5">Terms &amp; Conditions</a></li>
                        <li><a href="index7cb2.html?route=information/sitemap">Site Map</a></li>
                    </ul>
                </div>



                <div class="col-sm-3 column">
                    <h5>My Account</h5>
                    <ul class="list-unstyled">
                        <li><a href="indexe223.html?route=account/account">My Account</a></li>
                        <li><a href="indexe223.html?route=account/order">Order History</a></li>
                        <li><a href="indexe223.html?route=account/wishlist">Wish List</a></li>
                        <li><a href="indexe223.html?route=account/newsletter">Newsletter</a></li>
                        <li><a href="index71ba.html?route=account/return/add">Returns</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 column footerright">
                    <div class="contact-block">
                        <h5>Store information</h5>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <span>Fodder - Food Store<br> United States</span>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <span>000-000-0000</span>
                            </li>
                            <li>
                                <i class="fa fa-fax"></i>
                                <span>123456</span>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <span>sales@yourcompany.com</span>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="bottom-footer" class="bottomfooter">
        <div class="container">
            <div class="footer-inner">
                <div class="row">

                    <p id="powered" class="powered">Powered By <a href="http://www.opencart.com/">OpenCart</a> Fodder Restaurant Store &copy; 2019</p>
                </div>
            </div>
        </div>
    </div>
</footer>