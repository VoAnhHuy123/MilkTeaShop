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
    <base href="https://demo.codezeel.com/opencart/OPC04/OPC040082/" />

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
</head>


<body class="account-address-add layout-2 left-col">
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
            <form action="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address/add" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
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
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-company">Company</label>
                        <div class="col-sm-10">
                            <input type="text" name="company" value="" placeholder="Company" id="input-company" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-address-1">Address 1</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_1" value="" placeholder="Address 1" id="input-address-1" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-address-2">Address 2</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_2" value="" placeholder="Address 2" id="input-address-2" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-city">City</label>
                        <div class="col-sm-10">
                            <input type="text" name="city" value="" placeholder="City" id="input-city" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                        <div class="col-sm-10">
                            <input type="text" name="postcode" value="" placeholder="Post Code" id="input-postcode" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-country">Country</label>
                        <div class="col-sm-10">
                            <select name="country_id" id="input-country" class="form-control">
                                <option value=""> --- Please Select --- </option>


                                <option value="244">Aaland Islands</option>


                                <option value="1">Afghanistan</option>


                                <option value="2">Albania</option>


                                <option value="3">Algeria</option>


                                <option value="4">American Samoa</option>


                                <option value="5">Andorra</option>


                                <option value="6">Angola</option>


                                <option value="7">Anguilla</option>


                                <option value="8">Antarctica</option>


                                <option value="9">Antigua and Barbuda</option>


                                <option value="10">Argentina</option>


                                <option value="11">Armenia</option>


                                <option value="12">Aruba</option>


                                <option value="252">Ascension Island (British)</option>


                                <option value="13">Australia</option>


                                <option value="14">Austria</option>


                                <option value="15">Azerbaijan</option>


                                <option value="16">Bahamas</option>


                                <option value="17">Bahrain</option>


                                <option value="18">Bangladesh</option>


                                <option value="19">Barbados</option>


                                <option value="20">Belarus</option>


                                <option value="21">Belgium</option>


                                <option value="22">Belize</option>


                                <option value="23">Benin</option>


                                <option value="24">Bermuda</option>


                                <option value="25">Bhutan</option>


                                <option value="26">Bolivia</option>


                                <option value="245">Bonaire, Sint Eustatius and Saba</option>


                                <option value="27">Bosnia and Herzegovina</option>


                                <option value="28">Botswana</option>


                                <option value="29">Bouvet Island</option>


                                <option value="30">Brazil</option>


                                <option value="31">British Indian Ocean Territory</option>


                                <option value="32">Brunei Darussalam</option>


                                <option value="33">Bulgaria</option>


                                <option value="34">Burkina Faso</option>


                                <option value="35">Burundi</option>


                                <option value="36">Cambodia</option>


                                <option value="37">Cameroon</option>


                                <option value="38">Canada</option>


                                <option value="251">Canary Islands</option>


                                <option value="39">Cape Verde</option>


                                <option value="40">Cayman Islands</option>


                                <option value="41">Central African Republic</option>


                                <option value="42">Chad</option>


                                <option value="43">Chile</option>


                                <option value="44">China</option>


                                <option value="45">Christmas Island</option>


                                <option value="46">Cocos (Keeling) Islands</option>


                                <option value="47">Colombia</option>


                                <option value="48">Comoros</option>


                                <option value="49">Congo</option>


                                <option value="50">Cook Islands</option>


                                <option value="51">Costa Rica</option>


                                <option value="52">Cote D'Ivoire</option>


                                <option value="53">Croatia</option>


                                <option value="54">Cuba</option>


                                <option value="246">Curacao</option>


                                <option value="55">Cyprus</option>


                                <option value="56">Czech Republic</option>


                                <option value="237">Democratic Republic of Congo</option>


                                <option value="57">Denmark</option>


                                <option value="58">Djibouti</option>


                                <option value="59">Dominica</option>


                                <option value="60">Dominican Republic</option>


                                <option value="61">East Timor</option>


                                <option value="62">Ecuador</option>


                                <option value="63">Egypt</option>


                                <option value="64">El Salvador</option>


                                <option value="65">Equatorial Guinea</option>


                                <option value="66">Eritrea</option>


                                <option value="67">Estonia</option>


                                <option value="68">Ethiopia</option>


                                <option value="69">Falkland Islands (Malvinas)</option>


                                <option value="70">Faroe Islands</option>


                                <option value="71">Fiji</option>


                                <option value="72">Finland</option>


                                <option value="74">France, Metropolitan</option>


                                <option value="75">French Guiana</option>


                                <option value="76">French Polynesia</option>


                                <option value="77">French Southern Territories</option>


                                <option value="126">FYROM</option>


                                <option value="78">Gabon</option>


                                <option value="79">Gambia</option>


                                <option value="80">Georgia</option>


                                <option value="81">Germany</option>


                                <option value="82">Ghana</option>


                                <option value="83">Gibraltar</option>


                                <option value="84">Greece</option>


                                <option value="85">Greenland</option>


                                <option value="86">Grenada</option>


                                <option value="87">Guadeloupe</option>


                                <option value="88">Guam</option>


                                <option value="89">Guatemala</option>


                                <option value="256">Guernsey</option>


                                <option value="90">Guinea</option>


                                <option value="91">Guinea-Bissau</option>


                                <option value="92">Guyana</option>


                                <option value="93">Haiti</option>


                                <option value="94">Heard and Mc Donald Islands</option>


                                <option value="95">Honduras</option>


                                <option value="96">Hong Kong</option>


                                <option value="97">Hungary</option>


                                <option value="98">Iceland</option>


                                <option value="99">India</option>


                                <option value="100">Indonesia</option>


                                <option value="101">Iran (Islamic Republic of)</option>


                                <option value="102">Iraq</option>


                                <option value="103">Ireland</option>


                                <option value="254">Isle of Man</option>


                                <option value="104">Israel</option>


                                <option value="105">Italy</option>


                                <option value="106">Jamaica</option>


                                <option value="107">Japan</option>


                                <option value="257">Jersey</option>


                                <option value="108">Jordan</option>


                                <option value="109">Kazakhstan</option>


                                <option value="110">Kenya</option>


                                <option value="111">Kiribati</option>


                                <option value="253">Kosovo, Republic of</option>


                                <option value="114">Kuwait</option>


                                <option value="115">Kyrgyzstan</option>


                                <option value="116">Lao People's Democratic Republic</option>


                                <option value="117">Latvia</option>


                                <option value="118">Lebanon</option>


                                <option value="119">Lesotho</option>


                                <option value="120">Liberia</option>


                                <option value="121">Libyan Arab Jamahiriya</option>


                                <option value="122">Liechtenstein</option>


                                <option value="123">Lithuania</option>


                                <option value="124">Luxembourg</option>


                                <option value="125">Macau</option>


                                <option value="127">Madagascar</option>


                                <option value="128">Malawi</option>


                                <option value="129">Malaysia</option>


                                <option value="130">Maldives</option>


                                <option value="131">Mali</option>


                                <option value="132">Malta</option>


                                <option value="133">Marshall Islands</option>


                                <option value="134">Martinique</option>


                                <option value="135">Mauritania</option>


                                <option value="136">Mauritius</option>


                                <option value="137">Mayotte</option>


                                <option value="138">Mexico</option>


                                <option value="139">Micronesia, Federated States of</option>


                                <option value="140">Moldova, Republic of</option>


                                <option value="141">Monaco</option>


                                <option value="142">Mongolia</option>


                                <option value="242">Montenegro</option>


                                <option value="143">Montserrat</option>


                                <option value="144">Morocco</option>


                                <option value="145">Mozambique</option>


                                <option value="146">Myanmar</option>


                                <option value="147">Namibia</option>


                                <option value="148">Nauru</option>


                                <option value="149">Nepal</option>


                                <option value="150">Netherlands</option>


                                <option value="151">Netherlands Antilles</option>


                                <option value="152">New Caledonia</option>


                                <option value="153">New Zealand</option>


                                <option value="154">Nicaragua</option>


                                <option value="155">Niger</option>


                                <option value="156">Nigeria</option>


                                <option value="157">Niue</option>


                                <option value="158">Norfolk Island</option>


                                <option value="112">North Korea</option>


                                <option value="159">Northern Mariana Islands</option>


                                <option value="160">Norway</option>


                                <option value="161">Oman</option>


                                <option value="162">Pakistan</option>


                                <option value="163">Palau</option>


                                <option value="247">Palestinian Territory, Occupied</option>


                                <option value="164">Panama</option>


                                <option value="165">Papua New Guinea</option>


                                <option value="166">Paraguay</option>


                                <option value="167">Peru</option>


                                <option value="168">Philippines</option>


                                <option value="169">Pitcairn</option>


                                <option value="170">Poland</option>


                                <option value="171">Portugal</option>


                                <option value="172">Puerto Rico</option>


                                <option value="173">Qatar</option>


                                <option value="174">Reunion</option>


                                <option value="175">Romania</option>


                                <option value="176">Russian Federation</option>


                                <option value="177">Rwanda</option>


                                <option value="178">Saint Kitts and Nevis</option>


                                <option value="179">Saint Lucia</option>


                                <option value="180">Saint Vincent and the Grenadines</option>


                                <option value="181">Samoa</option>


                                <option value="182">San Marino</option>


                                <option value="183">Sao Tome and Principe</option>


                                <option value="184">Saudi Arabia</option>


                                <option value="185">Senegal</option>


                                <option value="243">Serbia</option>


                                <option value="186">Seychelles</option>


                                <option value="187">Sierra Leone</option>


                                <option value="188">Singapore</option>


                                <option value="189">Slovak Republic</option>


                                <option value="190">Slovenia</option>


                                <option value="191">Solomon Islands</option>


                                <option value="192">Somalia</option>


                                <option value="193">South Africa</option>


                                <option value="194">South Georgia &amp; South Sandwich Islands</option>


                                <option value="113">South Korea</option>


                                <option value="248">South Sudan</option>


                                <option value="195">Spain</option>


                                <option value="196">Sri Lanka</option>


                                <option value="249">St. Barthelemy</option>


                                <option value="197">St. Helena</option>


                                <option value="250">St. Martin (French part)</option>


                                <option value="198">St. Pierre and Miquelon</option>


                                <option value="199">Sudan</option>


                                <option value="200">Suriname</option>


                                <option value="201">Svalbard and Jan Mayen Islands</option>


                                <option value="202">Swaziland</option>


                                <option value="203">Sweden</option>


                                <option value="204">Switzerland</option>


                                <option value="205">Syrian Arab Republic</option>


                                <option value="206">Taiwan</option>


                                <option value="207">Tajikistan</option>


                                <option value="208">Tanzania, United Republic of</option>


                                <option value="209">Thailand</option>


                                <option value="210">Togo</option>


                                <option value="211">Tokelau</option>


                                <option value="212">Tonga</option>


                                <option value="213">Trinidad and Tobago</option>


                                <option value="255">Tristan da Cunha</option>


                                <option value="214">Tunisia</option>


                                <option value="215">Turkey</option>


                                <option value="216">Turkmenistan</option>


                                <option value="217">Turks and Caicos Islands</option>


                                <option value="218">Tuvalu</option>


                                <option value="219">Uganda</option>


                                <option value="220">Ukraine</option>


                                <option value="221">United Arab Emirates</option>


                                <option value="222" selected="selected">United Kingdom</option>


                                <option value="223">United States</option>


                                <option value="224">United States Minor Outlying Islands</option>


                                <option value="225">Uruguay</option>


                                <option value="226">Uzbekistan</option>


                                <option value="227">Vanuatu</option>


                                <option value="228">Vatican City State (Holy See)</option>


                                <option value="229">Venezuela</option>


                                <option value="230">Viet Nam</option>


                                <option value="231">Virgin Islands (British)</option>


                                <option value="232">Virgin Islands (U.S.)</option>


                                <option value="233">Wallis and Futuna Islands</option>


                                <option value="234">Western Sahara</option>


                                <option value="235">Yemen</option>


                                <option value="238">Zambia</option>


                                <option value="239">Zimbabwe</option>


                            </select>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-zone">Region / State</label>
                        <div class="col-sm-10">
                            <select name="zone_id" id="input-zone" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Default Address</label>
                        <div class="col-sm-10">               <label class="radio-inline">
                            <input type="radio" name="default" value="1" />
                            Yes</label>
                            <label class="radio-inline">
                                <input type="radio" name="default" value="0" checked="checked" />
                                No</label>
                        </div>
                    </div>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="https://demo.codezeel.com/opencart/OPC04/OPC040082/index.php?route=account/address" class="btn btn-default">Back</a></div>
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
                        $(element).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
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
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
    $.ajax({
        url: 'index.php?route=account/account/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
            $('select[name=\'country_id\']').prop('disabled', true);
        },
        complete: function() {
            $('select[name=\'country_id\']').prop('disabled', false);
        },
        success: function(json) {
            if (json['postcode_required'] == '1') {
                $('input[name=\'postcode\']').parent().parent().addClass('required');
            } else {
                $('input[name=\'postcode\']').parent().parent().removeClass('required');
            }

            html = '<option value=""> --- Please Select --- </option>';

            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                    if (json['zone'][i]['zone_id'] == '') {
                        html += ' selected="selected"';
                    }

                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"> --- None --- </option>';
            }

            $('select[name=\'zone_id\']').html(html);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<%@ include file="Layout/footer.jsp" %>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</body></html>
