<%@page import="manager.SecurityQuestionManager"%>
<%@page import="bean.SecurityQuestionBean"%>
<%@page import="manager.CityManager"%>
<%@page import="bean.CityBean"%>
<%@page import="manager.AreaManager"%>
<%@page import="bean.AreaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="manager.UserManager"%>
<%@page import="bean.UserBean"%>
<!DOCTYPE HTML>
<html>

    <head>
        <title>Traveler - Login/Register on Traveler</title>


        <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
        <meta name="keywords" content="Template, html, premium, themeforest" />
        <meta name="description" content="Traveler - Premium template for travel companies">
        <meta name="author" content="Tsoy">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- GOOGLE FONTS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600' rel='stylesheet' type='text/css'>
        <!-- /GOOGLE FONTS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/mystyles.css">
        <script src="js/modernizr.js"></script>

        <link rel="stylesheet" href="css/switcher.css" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/bright-turquoise.css" title="bright-turquoise" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/turkish-rose.css" title="turkish-rose" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/salem.css" title="salem" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/hippie-blue.css" title="hippie-blue" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/mandy.css" title="mandy" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/green-smoke.css" title="green-smoke" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/horizon.css" title="horizon" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/cerise.css" title="cerise" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/brick-red.css" title="brick-red" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/de-york.css" title="de-york" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/shamrock.css" title="shamrock" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/studio.css" title="studio" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/leather.css" title="leather" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/denim.css" title="denim" media="all" />
        <link rel="alternate stylesheet" type="text/css" href="css/schemes/scarlet.css" title="scarlet" media="all" />

        <script src="dww_admin/js/mask.js"></script>
        <script src="dww_admin/js/custom.min.js"></script>

    </head>

    <body>
        <%
            if (session.getAttribute("user_session") == null) {
                response.sendRedirect("reg-login.jsp");
            } else {
        %>


        <%
            UserBean user = UserManager.getUserDetailsByEmail((String) session.getAttribute("user_session"));
        %>

        <!-- FACEBOOK WIDGET -->
        <div id="fb-root"></div>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "../../../../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <!-- /FACEBOOK WIDGET -->
        <div class="global-wrap">
            <div class="demo_changer" id="demo_changer">
                <div class="demo-icon fa fa-sliders"></div>
                <div class="form_holder">
                    <div class="line"></div>
                    <p>Color Scheme</p>
                    <div class="predefined_styles" id="styleswitch_area">
                        <a class="styleswitch" href="login-register-normalc392.html?default=true" style="background:#ED8323;"></a>
                        <a class="styleswitch" href="#" data-src="bright-turquoise" style="background:#0EBCF2;"></a>
                        <a class="styleswitch" href="#" data-src="turkish-rose" style="background:#B66672;"></a>
                        <a class="styleswitch" href="#" data-src="salem" style="background:#12A641;"></a>
                        <a class="styleswitch" href="#" data-src="hippie-blue" style="background:#4F96B6;"></a>
                        <a class="styleswitch" href="#" data-src="mandy" style="background:#E45E66;"></a>
                        <a class="styleswitch" href="#" data-src="green-smoke" style="background:#96AA66;"></a>
                        <a class="styleswitch" href="#" data-src="horizon" style="background:#5B84AA;"></a>
                        <a class="styleswitch" href="#" data-src="cerise" style="background:#CA2AC6;"></a>
                        <a class="styleswitch" href="#" data-src="brick-red" style="background:#cf315a;"></a>
                        <a class="styleswitch" href="#" data-src="de-york" style="background:#74C683;"></a>
                        <a class="styleswitch" href="#" data-src="shamrock" style="background:#30BBB1;"></a>
                        <a class="styleswitch" href="#" data-src="studio" style="background:#7646B8;"></a>
                        <a class="styleswitch" href="#" data-src="leather" style="background:#966650;"></a>
                        <a class="styleswitch" href="#" data-src="denim" style="background:#1A5AE4;"></a>
                        <a class="styleswitch" href="#" data-src="scarlet" style="background:#FF1D13;"></a>
                    </div>
                    <div class="line"></div>
                    <p>Layout</p>
                    <div class="predefined_styles"><a class="btn btn-sm" href="#" id="btn-wide">Wide</a><a class="btn btn-sm" href="#" id="btn-boxed">Boxed</a>
                    </div>
                    <div class="line"></div>
                    <p>Background Patterns</p>
                    <div class="predefined_styles" id="patternswitch_area">
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/binding_light.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/binding_dark.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/dark_fish_skin.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/dimension.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/escheresque_ste.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/food.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/giftly.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/grey_wash_wall.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/ps_neutral.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/pw_maze_black.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/pw_pattern.png);"></a>
                        <a class="patternswitch" href="#" style="background-image: url(img/patterns/simple_dashed.png);"></a>
                    </div>
                    <div class="line"></div>
                    <p>Background Images</p>
                    <div class="predefined_styles" id="bgimageswitch_area">
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/bike.jpg);" data-src="img/backgrounds/bike.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/flowers.jpg);" data-src="img/backgrounds/flowers.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/wood.jpg);" data-src="img/backgrounds/wood.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/taxi.jpg);" data-src="img/backgrounds/taxi.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/phone.jpg);" data-src="img/backgrounds/phone.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/road.jpg);" data-src="img/backgrounds/road.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/keyboard.jpg);" data-src="img/backgrounds/keyboard.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/beach.jpg);" data-src="img/backgrounds/beach.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/street.jpg);" data-src="img/backgrounds/street.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/nature.jpg);" data-src="img/backgrounds/nature.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/bridge.jpg);" data-src="img/backgrounds/bridge.jpg"></a>
                        <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/cameras.jpg);" data-src="img/backgrounds/cameras.jpg"></a>
                    </div>
                    <div class="line"></div>
                </div>
            </div>
            <header id="main-header">
                <div class="header-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <a class="logo" href="index.html">
                                    <img src="img/logo-invert.png" alt="Image Alternative text" title="Image Title" />
                                </a>
                            </div>
                            <div class="col-md-3 col-md-offset-2">
                                <form class="main-header-search">
                                    <div class="form-group form-group-icon-left">
                                        <i class="fa fa-search input-icon"></i>
                                        <input type="text" class="form-control">
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4">
                                <div class="top-user-area clearfix">
                                    <ul class="top-user-area-list list list-horizontal list-border">
                                        <li class="top-user-area-avatar">
                                            <a href="user-profile.html">
                                                <img class="origin round" src="img/amaze_300x300.jpg" width="40" height="40" alt="Image Alternative text" title="AMaze" /> <%= user.getFname()%> <%= user.getLname()%></a>
                                        </li>
                                        <li><a href="LogoutServlet">Sign Out</a>
                                        </li>
                                        <li class="nav-drop"><a href="#">USD $<i class="fa fa-angle-down"></i><i class="fa fa-angle-up"></i></a>
                                            <ul class="list nav-drop-menu">
                                                <li><a href="#">EUR<span class="right">€</span></a>
                                                </li>
                                                <li><a href="#">GBP<span class="right">£</span></a>
                                                </li>
                                                <li><a href="#">JPY<span class="right">円</span></a>
                                                </li>
                                                <li><a href="#">CAD<span class="right">$</span></a>
                                                </li>
                                                <li><a href="#">AUD<span class="right">A$</span></a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="top-user-area-lang nav-drop">
                                            <a href="#">
                                                <img src="img/flags/32/uk.png" alt="Image Alternative text" title="Image Title" />ENG<i class="fa fa-angle-down"></i><i class="fa fa-angle-up"></i>
                                            </a>
                                            <ul class="list nav-drop-menu">
                                                <li>
                                                    <a title="German" href="#">
                                                        <img src="img/flags/32/de.png" alt="Image Alternative text" title="Image Title" /><span class="right">GER</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a title="Japanise" href="#">
                                                        <img src="img/flags/32/jp.png" alt="Image Alternative text" title="Image Title" /><span class="right">JAP</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a title="Italian" href="#">
                                                        <img src="img/flags/32/it.png" alt="Image Alternative text" title="Image Title" /><span class="right">ITA</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a title="French" href="#">
                                                        <img src="img/flags/32/fr.png" alt="Image Alternative text" title="Image Title" /><span class="right">FRE</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a title="Russian" href="#">
                                                        <img src="img/flags/32/ru.png" alt="Image Alternative text" title="Image Title" /><span class="right">RUS</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a title="Korean" href="#">
                                                        <img src="img/flags/32/kr.png" alt="Image Alternative text" title="Image Title" /><span class="right">KOR</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="nav">
                        <ul class="slimmenu" id="slimmenu">
                            <li><a href="index.html">Home</a>
                                <ul>
                                    <li><a href="index.html">Default</a>
                                    </li>
                                    <li><a href="index-1.html">Layout 1</a>
                                    </li>
                                    <li><a href="index-2.html">Layout 2</a>
                                    </li>
                                    <li><a href="index-3.html">Layout 3</a>
                                    </li>
                                    <li><a href="index-4.html">Layout 4</a>
                                    </li>
                                    <li><a href="index-5.html">Layout 5</a>
                                    </li>
                                    <li><a href="index-6.html">Layout 6</a>
                                    </li>
                                    <li><a href="index-7.html">Layout 7</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="active"><a href="success-payment.html">Pages</a>
                                <ul>
                                    <li><a href="success-payment.html">Success Payment</a>
                                    </li>
                                    <li><a href="user-profile.html">User Profile</a>
                                        <ul>
                                            <li><a href="user-profile.html">Overview</a>
                                            </li>
                                            <li><a href="user-profile-settings.html">Settings</a>
                                            </li>
                                            <li><a href="user-profile-photos.html">Photos</a>
                                            </li>
                                            <li><a href="user-profile-booking-history.html">Booking History</a>
                                            </li>
                                            <li><a href="user-profile-cards.html">Cards</a>
                                            </li>
                                            <li><a href="user-profile-wishlist.html">Wishlist</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="blog.html">Blog</a>
                                        <ul>
                                            <li><a href="blog.html">Sidebar Right</a>
                                            </li>
                                            <li><a href="blog-sidebar-left.html">Sidebar Left</a>
                                            </li>
                                            <li><a href="blog-full-width.html">Full Width</a>
                                            </li>
                                            <li><a href="blog-post.html">Post</a>
                                                <ul>
                                                    <li><a href="blog-post.html">Sidebar Right</a>
                                                    </li>
                                                    <li><a href="blog-post-sidebar-left.html">Sidebar Left</a>
                                                    </li>
                                                    <li><a href="blog-post-full-width.html">Full Width</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="404.html">404 page</a>
                                    </li>
                                    <li><a href="contact-us.html">Contact Us</a>
                                    </li>
                                    <li><a href="about.html">About</a>
                                    </li>
                                    <li class="active"><a href="login-register.html">Login/Register</a>
                                        <ul>
                                            <li><a href="login-register.html">Full Page</a>
                                            </li>
                                            <li class="active"><a href="login-register-normal.html">Normal</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="loading.html">Loading</a>
                                    </li>
                                    <li><a href="comming-soon.html">Comming Soon</a>
                                    </li>
                                    <li><a href="gallery.html">Gallery</a>
                                        <ul>
                                            <li><a href="gallery.html">4 Columns</a>
                                            </li>
                                            <li><a href="gallery-3-col.html">3 columns</a>
                                            </li>
                                            <li><a href="gallery-2-col.html">2 columns</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="page-full-width.html">Full Width</a>
                                    </li>
                                    <li><a href="page-sidebar-right.html">Sidebar Right</a>
                                    </li>
                                    <li><a href="page-sidebar-left.html">Sidebar Left</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="feature-typography.html">Features</a>
                                <ul>
                                    <li><a href="feature-typography.html">Typography</a>
                                    </li>
                                    <li><a href="feature-icons.html">Icons</a>
                                    </li>
                                    <li><a href="feature-forms.html">Forms</a>
                                    </li>
                                    <li><a href="feature-icon-effects.html">Icon Effects</a>
                                    </li>
                                    <li><a href="feature-elements.html">Elements</a>
                                    </li>
                                    <li><a href="feature-grid.html">Grid</a>
                                    </li>
                                    <li><a href="feature-hovers.html">Hover effects</a>
                                    </li>
                                    <li><a href="feature-lightbox.html">Lightbox</a>
                                    </li>
                                    <li><a href="feature-media.html">Media</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="hotels.html">Hotels</a>
                                <ul>
                                    <li><a href="hotel-details.html">Details</a>
                                        <ul>
                                            <li><a href="hotel-details.html">Layout 1</a>
                                            </li>
                                            <li><a href="hotel-details-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="hotel-details-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="hotel-details-4.html">Layout 4</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="hotel-payment.html">Payment</a>
                                        <ul>
                                            <li><a href="hotel-payment.html">Registered</a>
                                            </li>
                                            <li><a href="hotel-payment-registered-card.html">Existed Cards</a>
                                            </li>
                                            <li><a href="hotel-payment-unregistered.html">Unregistered</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="hotel-search.html">Search</a>
                                        <ul>
                                            <li><a href="hotel-search.html">Layout 1</a>
                                            </li>
                                            <li><a href="hotel-search-2.html">Layout 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="hotels.html">Results</a>
                                        <ul>
                                            <li><a href="hotels.html">Layout 1</a>
                                            </li>
                                            <li><a href="hotels-search-results-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="hotels-search-results-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="hotels-search-results-4.html">Layout 4</a>
                                            </li>
                                            <li><a href="hotel-search-results-5.html">Layout 5</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="flights.html">Flights</a>
                                <ul>
                                    <li><a href="flight-payment.html">Payment</a>
                                        <ul>
                                            <li><a href="flight-payment.html">Registered</a>
                                            </li>
                                            <li><a href="flight-payment-registered-card.html">Existed Cards</a>
                                            </li>
                                            <li><a href="flight-payment-unregistered.html">Unregistered</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="flight-search.html">Search</a>
                                        <ul>
                                            <li><a href="flight-search.html">Layout 1</a>
                                            </li>
                                            <li><a href="flight-search-2.html">Layout 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="flights.html">List</a>
                                        <ul>
                                            <li><a href="flights.html">Layout 1</a>
                                            </li>
                                            <li><a href="flights-search-results-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="flights-search-results-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="flights-search-results-4.html">Layout 4</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="rentals.html">Rentals</a>
                                <ul>
                                    <li><a href="rentals-details.html">Details</a>
                                        <ul>
                                            <li><a href="rentals-details.html">Layout 1</a>
                                            </li>
                                            <li><a href="rentals-details-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="rentals-details-3.html">Layout 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="rental-payment.html">Payment</a>
                                        <ul>
                                            <li><a href="rental-payment.html">Registered</a>
                                            </li>
                                            <li><a href="rental-payment-registered-card.html">Existed Cards</a>
                                            </li>
                                            <li><a href="rental-payment-unregistered.html">Unregistered</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="rentals-search.html">Search</a>
                                        <ul>
                                            <li><a href="rentals-search.html">Layout 1</a>
                                            </li>
                                            <li><a href="rentals-search-2.html">Layout 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="rentals.html">Results</a>
                                        <ul>
                                            <li><a href="rentals.html">Layout 1</a>
                                            </li>
                                            <li><a href="rentals-search-results-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="rentals-search-results-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="rentals-search-results-4.html">Layout 4</a>
                                            </li>
                                            <li><a href="rentals-search-results-5.html">Layout 5</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="cars.html">Cars</a>
                                <ul>
                                    <li><a href="car-details.html">Details</a>
                                    </li>
                                    <li><a href="car-payment.html">Payment</a>
                                        <ul>
                                            <li><a href="car-payment.html">Registered</a>
                                            </li>
                                            <li><a href="car-payment-registered-card.html">Existed Cards</a>
                                            </li>
                                            <li><a href="car-payment-unregistered.html">Unregistered</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="car-search.html">Search</a>
                                        <ul>
                                            <li><a href="car-search.html">Layout 1</a>
                                            </li>
                                            <li><a href="car-search-2.html">Layout 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="cars.html">Results</a>
                                        <ul>
                                            <li><a href="cars.html">Layout 1</a>
                                            </li>
                                            <li><a href="cars-results-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="cars-results-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="cars-results-4.html">Layout 4</a>
                                            </li>
                                            <li><a href="cars-results-5.html">Layout 5</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="activities.html">Activities</a>
                                <ul>
                                    <li><a href="activitiy-details.html">Details</a>
                                        <ul>
                                            <li><a href="activitiy-details.html">Layout 1</a>
                                            </li>
                                            <li><a href="activitiy-details-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="activitiy-details-3.html">Layout 3</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="activity-search.html">Search</a>
                                        <ul>
                                            <li><a href="activity-search.html">Layout 1</a>
                                            </li>
                                            <li><a href="activity-search-2.html">Layout 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="activitiy-payment.html">Payment</a>
                                        <ul>
                                            <li><a href="activitiy-payment.html">Registered</a>
                                            </li>
                                            <li><a href="activity-payment-registered-card.html">Existed Cards</a>
                                            </li>
                                            <li><a href="activitiy-payment-unregistered.html">Unregistered</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="activities.html">Results</a>
                                        <ul>
                                            <li><a href="activities.html">Layout 1</a>
                                            </li>
                                            <li><a href="activities-search-results-2.html">Layout 2</a>
                                            </li>
                                            <li><a href="activities-search-results-3.html">Layout 3</a>
                                            </li>
                                            <li><a href="activities-search-results-4.html">Layout 4</a>
                                            </li>
                                            <li><a href="activities-search-results-5.html">Layout 5</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </header>

            

            <div class="gap"></div>


            <div class="container">
                <div class="row" data-gutter="60">
                   
                      <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                                <%
                            String s1 = (String) request.getParameter("success");
                            if (s1 != null) {
                        %>
                        <h5 style="color: green">Message: <% out.print(s1); %> </h5>
                        <%}%>

                        <%
                            String s2 = (String) request.getParameter("error");
                            if (s2 != null) {
                        %>
                        <h5 style="color: red">Message: <% out.print(s1); %> </h5>
                        <%}%>
                                
                                
                                <div class="panel-heading ">Update Profile</div>
                                <div class="panel-wrapper collapse in" aria-expanded="true">
                                    <div class="panel-body">
                                        <form action="UpdateUserServlet" method="POST">
                                            <div class="form-body">
                                               <h5 style="color: orange" class="box-title">Person Info</h5> 
                                               <!--row-->
                                               <div class="row">
                                                   <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">First Name</label>
                                                            <input type="text" name="fname" value="<%= user.getFname()%>" class="form-control" placeholder="John"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Last Name</label>
                                                            <input type="text" name="lname" value="<%= user.getLname()%>" class="form-control" placeholder="doe"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Email</label>
                                                            <input type="text" name="email" value="<%= user.getEmail()%>" class="form-control" placeholder="e.g. Johndoe@Email.com"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Password</label>
                                                            <input type="password" name="password" value="<%= user.getPassword()%>" class="form-control" placeholder="John@123"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    
                                                    
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Mobile</label>
                                                            <input type="text" name="phone" value="<%= user.getPhone()%>" class="form-control" placeholder="John doe"> 
                                                        </div>
                                                    </div>
                                                      
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Date of Birth</label>
                                                            <input type="text" name="dob" class="form-control" value="<%= user.getDob()%>" placeholder="yyyy-mm-dd"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                   <% if(user.getGender().equals("male")) {%>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Gender</label>
                                                            <select class="form-control" name="gender">
                                                                <option value="male" selected>Male</option>
                                                                <option value="female">Female</option>
                                                            </select>  
                                                        </div>
                                                    </div>
                                                    <% } else {%>
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Gender</label>
                                                            <select class="form-control" name="gender">
                                                                <option value="male">Male</option>
                                                                <option value="female" selected >Female</option>
                                                            </select>  
                                                        </div>
                                                    </div>
                                                    <% } %>
                                                    
                                                    
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Profile Photo</label>
                                                            <input type="file" class="form-control" name="profile_pic" id="myFile">
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                              
                                                <h5 style="color: orange" class="box-title m-t-20">Address</h5>
                                                  <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Address Line-1</label>
                                                            <input type="text" name="add1" value="<%= user.getAdd1()%>" class="form-control"> </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Address Line-2</label>
                                                            <input type="text" name="add2" value="<%= user.getAdd2()%>" class="form-control"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">City</label>
                                                            
                                                            <select class="form-control" name="city_id" data-placeholder="Choose a City" tabindex="1">
                                                            <%
                                                                List<CityBean> cityList = CityManager.getCityList();
                                                                for (CityBean city : cityList) {
                                                            %> 
                                                             <% if (user.getCityid().equals(city.getCity_id() + "")) {%>
                                                            <option value="<%= city.getCity_id()%>" selected="selected"><%= city.getCity_name()%></option>
                                                            <%} else {%>
                                                            <option value="<%= city.getCity_id()%>"><%= city.getCity_name()%></option>
                                                            <%}%>

                                                            <% }%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Area</label>
                                                            
                                                            <select class="form-control" name="area_id" data-placeholder="Choose a Area" tabindex="1">
                                                                <%
                                                                List<AreaBean> areaList = AreaManager.getAreaList();
                                                                for (AreaBean area : areaList) {
                                                            %>

                                                            <% if (user.getAreaid().equals(area.getArea_id() + "")) {%>
                                                            <option value="<%= area.getArea_id()%>" selected="selected"><%= area.getArea_name()%></option>
                                                            <%} else {%>
                                                            <option value="<%= area.getArea_id()%>"><%= area.getArea_name()%></option>
                                                            <%}%>


                                                            <% }%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                   
                                              
                                                <h5 style="color: orange">Security</h5>
                                                

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Identity Proof</label>
                                                            <input type="file" name="id_proof" class="form-control">
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Resident Proof</label>
                                                            <input type="file" name="res_proof" class="form-control">
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!--/row-->
                                                                                                        
                                      
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Security Question</label>
                                                                    
                                                            <select class="form-control" name="security_question_id">
                                                                       <%
                                        List<SecurityQuestionBean> questionList = SecurityQuestionManager.getSecurityQuestionList();
                                        for (SecurityQuestionBean question : questionList) {
                                    %>
                                    
                                    <% if(user.getSecurity_question_id().equals(question.getSecurity_question_id()+"")) 
                                    {%>
                                    <option value="<%= question.getSecurity_question_id() %>" selected="selected"><%= question.getSecurity_question_ans() %></option>
                                    <% }
                                    else{ %>        
                                     <option value="<%= question.getSecurity_question_id() %>"><%= question.getSecurity_question_ans() %></option>
                                    <% } %>
                                    
                                   <% } %> 
                                                                </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Security Question Answer</label>
                                                            <input type="text" name="security_question_answer" value="<%= user.getSecurity_question_answer()%>" class="form-control"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="form-group text-center m-t-20">
                                                        <div class="col-xs-12">
                                                            
                                                            <input type="hidden" name="user_type" class="form-control" value="<%= user.getUtype()%>" >
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group form-group-icon-left">
														<input class="form-control" name="is_Active" value="<%=user.getIs_Active() %>" type="hidden" />
													</div>
									
													<div class="form-group form-group-icon-left">
																<input class="form-control" name="date_of_insertion" value="<%=user.getDate_of_insertion()%>" type="hidden" />
													</div>
                                                    
                                                </div>

                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                                                    <button type="button" class="btn btn-default">Cancel</button>
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



            <div class="gap"></div>
            <footer id="main-footer">
                <div class="container">
                    <div class="row row-wrap">
                        <div class="col-md-3">
                            <a class="logo" href="index.html">
                                <img src="img/logo-invert.png" alt="Image Alternative text" title="Image Title" />
                            </a>
                            <p class="mb20">Booking, reviews and advices on hotels, resorts, flights, vacation rentals, travel packages, and lots more!</p>
                            <ul class="list list-horizontal list-space">
                                <li>
                                    <a class="fa fa-facebook box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-twitter box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-google-plus box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-linkedin box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                                </li>
                                <li>
                                    <a class="fa fa-pinterest box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <h4>Newsletter</h4>
                            <form>
                                <label>Enter your E-mail Address</label>
                                <input type="text" class="form-control">
                                <p class="mt5"><small>*We Never Send Spam</small>
                                </p>
                                <input type="submit" class="btn btn-primary" value="Subscribe">
                            </form>
                        </div>
                        <div class="col-md-2">
                            <ul class="list list-footer">
                                <li><a href="#">About US</a>
                                </li>
                                <li><a href="#">Press Centre</a>
                                </li>
                                <li><a href="#">Best Price Guarantee</a>
                                </li>
                                <li><a href="#">Travel News</a>
                                </li>
                                <li><a href="#">Jobs</a>
                                </li>
                                <li><a href="#">Privacy Policy</a>
                                </li>
                                <li><a href="#">Terms of Use</a>
                                </li>
                                <li><a href="#">Feedback</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h4>Have Questions?</h4>
                            <h4 class="text-color">+1-202-555-0173</h4>
                            <h4><a href="#" class="text-color">support@traveler.com</a></h4>
                            <p>24/7 Dedicated Customer Support</p>
                        </div>

                    </div>
                </div>
            </footer>

            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>
            <script src="js/slimmenu.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/bootstrap-timepicker.js"></script>
            <script src="js/nicescroll.js"></script>
            <script src="js/dropit.js"></script>
            <script src="js/ionrangeslider.js"></script>
            <script src="js/icheck.js"></script>
            <script src="js/fotorama.js"></script>
            <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
            <script src="js/typeahead.js"></script>
            <script src="js/card-payment.js"></script>
            <script src="js/magnific.js"></script>
            <script src="js/owl-carousel.js"></script>
            <script src="js/fitvids.js"></script>
            <script src="js/tweet.js"></script>
            <script src="js/countdown.js"></script>
            <script src="js/gridrotator.js"></script>
            <script src="js/custom.js"></script>
            <script src="js/switcher.js"></script>
        </div>
        <% }%>
    </body>


    <!-- Mirrored from remtsoy.com/tf_templates/traveler/demo_v1_7/login-register-normal.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2017 10:51:33 GMT -->
</html>


