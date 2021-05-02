<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Housy - Real Estate HTML5 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/bootstrap-submenu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/style.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="<%=request.getContextPath()%>/userResources/css/default.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CRoboto:300,400,500,700&display=swap">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<%=request.getContextPath()%>/userResources/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/userResources/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/userResources/js/html5shiv.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="page_loader"></div>

<jsp:include page="header.jsp"></jsp:include>


<!-- Sub banner start -->
<div class="sub-banner">
    <div class="container">
        <div class="page-name">
            <h1>Agent Detail</h1>
            <ul>
                <li><a href="index.html">Index</a></li>
                <li><span>/</span>Agent Detail</li>
            </ul>
        </div>
    </div>
</div>

<!-- Agent page start -->
<div class="agent-page content-area">
    <div class="container">
        <!-- Heading -->
        <h1 class="heading-2">Agent Details</h1>
        <div class="row">
            <div class="col-lg-8">
                <div class="row team-4 team-6">
                    <div class="col-xl-5 col-lg-5 col-md-5 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-9.jpg" alt="avatar-4" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 col-pad align-self-center">
                        <div class="detail">
                            <h5>Creative Director</h5>
                            <h4>
                                <a href="#">John Pitarshon</a>
                            </h4>

                            <div class="contact">
                                <ul>
                                    <li>
                                        <span>Address:</span><a href="#"> 44 New Design Street,</a>
                                    </li>
                                    <li>
                                        <span>Email:</span><a href="mailto:info@themevessel.com"> info@themevessel.com</a>
                                    </li>
                                    <li>
                                        <span>Mobile:</span><a href="tel:+554XX-634-7071"> +55 4XX-634-7071</a>
                                    </li>
                                    <li>
                                        <span>Fax:</span><a href="#"> +0477 85X6 552</a>
                                    </li>
                                    <li>
                                        <span>Website:</span><a href="#"> www.themevesselcom</a>
                                    </li>
                                </ul>
                            </div>

                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="google-bg"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="agent-biography">
                    <h3 class="heading-2">Biography</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a.</p>
                    <p>Ut euismod ultricies sollicitudin. Curabitur sed dapibus nulla. Nulla eget iaculis lectus. Mauris ac maximus neque. Nam in mauris quis libero sodales eleifend. Morbi varius, nulla sit amet rutrum elementum</p>
                    <p>Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla. Aliquam ultricies nunc porta metus interdum mollis.</p>
                    <br>
                    <h3 class="heading-2">Recently Properties</h3>
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="property-box">
                                <div class="property-thumbnail">
                                    <a href="properties-details.html" class="property-img">
                                        <div class="listing-badges">
                                            <span class="featured">Featured</span>
                                            <span class="listing-time">For Sale</span>
                                        </div>
                                        <div class="price-box">$24,000<small>/mo</small></div>
                                        <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-1.jpg" alt="properties">
                                    </a>
                                </div>
                                <div class="detail">
                                    <h1 class="title">
                                        <a href="properties-details.html">Modern Family Home</a>
                                    </h1>
                                    <div class="location">
                                        <a href="properties-details.html">
                                            <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                        </a>
                                    </div>
                                    <ul class="facilities-list clearfix">
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                        <li>
                                            <i class="flaticon-vehicle"></i> 1 Garage
                                        </li>
                                        <li>
                                            <i class="flaticon-window"></i> 3 Balcony
                                        </li>
                                        <li>
                                            <i class="flaticon-monitor"></i> TV
                                        </li>
                                    </ul>
                                </div>
                                <div class="footer clearfix">
                                    <div class="pull-left days">
                                        <a><i class="fa fa-user"></i> Jhon Doe</a>
                                    </div>
                                    <div class="pull-right">
                                        <a><i class="flaticon-time"></i> 5 Days ago</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="property-box">
                                <div class="property-thumbnail">
                                    <a href="properties-details.html" class="property-img">
                                        <div class="listing-badges">
                                            <span class="featured">Featured</span>
                                            <span class="listing-time">For Sale</span>
                                        </div>
                                        <div class="price-box">$24,000<small>/mo</small></div>
                                        <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-2.jpg" alt="properties">
                                    </a>
                                </div>
                                <div class="detail">
                                    <h1 class="title">
                                        <a href="properties-details.html">Relaxing Apartment</a>
                                    </h1>
                                    <div class="location">
                                        <a href="properties-details.html">
                                            <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                        </a>
                                    </div>
                                    <ul class="facilities-list clearfix">
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                        <li>
                                            <i class="flaticon-vehicle"></i> 1 Garage
                                        </li>
                                        <li>
                                            <i class="flaticon-window"></i> 3 Balcony
                                        </li>
                                        <li>
                                            <i class="flaticon-monitor"></i> TV
                                        </li>
                                    </ul>
                                </div>
                                <div class="footer clearfix">
                                    <div class="pull-left days">
                                        <a><i class="fa fa-user"></i> Jhon Doe</a>
                                    </div>
                                    <div class="pull-right">
                                        <a><i class="flaticon-time"></i> 5 Days ago</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar-right">
                    <!-- Contact 1 start -->
                    <div class="contact-2 widget reviews">
                        <h3 class="sidebar-title">Reviews</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <form action="#" method="GET" enctype="multipart/form-data">
                            <div class="rowo">
                                <div class="form-group name">
                                    <input type="text" name="name" class="form-control" placeholder="Name">
                                </div>
                                <div class="form-group email">
                                    <input type="email" name="email" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group number">
                                    <input type="text" name="phone" class="form-control" placeholder="Phone">
                                </div>
                                <div class="form-group message">
                                    <textarea class="form-control" name="message" placeholder="Write message"></textarea>
                                </div>
                                <div class="send-btn">
                                    <button type="submit" class="btn btn-md button-theme btn-block">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Latest reviews Start -->
                    <div class="widget latest-reviews">
                        <h3 class="sidebar-title">Reviews</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="<%=request.getContextPath()%>/userResources/image/avatar-1.jpg" alt="avatar-1">
                                </a>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading"><a href="#">Emma Connor</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiamrisus tortor, accumsan</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="<%=request.getContextPath()%>/userResources/image/avatar-2.jpg" alt="avatar-2">
                                </a>
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading"><a href="#">Martin Smith</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiamrisus tortor, accumsan</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

<script src="<%=request.getContextPath()%>/userResources/js/jquery-2.2.0.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/bootstrap-submenu.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/rangeslider.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.mb.YTPlayer.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.scrollUp.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/leaflet.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/leaflet-providers.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/leaflet.markercluster.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/dropzone.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/slick.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.filterizr.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.magnific-popup.min.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/jquery.countdown.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/maps.js"></script>
<script src="<%=request.getContextPath()%>/userResources/js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<%=request.getContextPath()%>/userResources/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
