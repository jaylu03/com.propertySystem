<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>HOUSE MART</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/css/bootstrap-submenu.css">
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
<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/override.css">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<%=request.getContextPath()%>/userResources/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/userResources/js/ie-emulation-modes-warning.js"></script>
	<link rel="stylesheet" type="text/css" id="style_sheet" href="<%=request.getContextPath()%>/userResources/css/override.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/userResources/js/html5shiv.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body style="overflow: hidden">
<div class="page_loader"></div>

<jsp:include page="header.jsp"></jsp:include>


<!-- Banner start -->
<div class="bannerContainer">
<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item item-bg active">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-4.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.5); width: 100%">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <div class="text-sections">
                                <h3 class="text-uppercase">Your Dream Luxury Apartments</h3>
                                <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="/login" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-3.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.5); width: 100%">
                    <div class="carousel-content container">
                        <div class="text-center">
                           <div class="text-sections">
                                <h3 class="text-uppercase">Best Place to find home</h3>
                               <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="/login" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-1.jpg" alt="banner">
                 <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.5); width: 100%">
                    <div class="carousel-content container" >
                        <div class="text-center">
                            <div class="btn-sections">
                                <h3 class="text-uppercase">Sweet Home For Small Family</h3>
                                <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="/login" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
        <a class="carousel-control-prev" href="#bannerCarousole" role="button" data-slide="prev">
            <span class="slider-mover-left" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </span>
        </a>
        <a class="carousel-control-next" href="#bannerCarousole" role="button" data-slide="next">
            <span class="slider-mover-right" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </span>
        </a>
    </div>
</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>


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