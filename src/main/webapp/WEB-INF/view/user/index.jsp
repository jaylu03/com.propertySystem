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

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="<%=request.getContextPath()%>/userResources/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/userResources/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/userResources/js/html5shiv.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" id="style_sheet" href="<%=request.getContextPath()%>/userResources/css/override.css">
</head>
<body>
<div class="page_loader"></div>

<jsp:include page="header.jsp"></jsp:include>


<!-- Banner start -->
<div class="bannerContainer">
<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item item-bg active">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-4.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.7); width: 100%">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <div class="text-sections">
                                <h3 class="text-uppercase">Welcome To jdkHouse Mart</h3>
                                <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="loadBuy" class="btn btn-lg btn-theme">BUY HOUSE</a>
                                <a href="loadSell" class="btn btn-lg btn-white-lg-outline">SELL HOUSE</a>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-3.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.7); width: 100%">
                    <div class="carousel-content container">
                        <div class="text-center">
                           <div class="text-sections">
                                <h3 class="text-uppercase">Best Place to find home</h3>
                               <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="#" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-75" src="<%=request.getContextPath()%>/userResources/image/banner-1.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100 text-center" style="background-color: rgba(0,0,0,0.7); width: 100%">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <div class="btn-sections">
                                <h3 class="text-uppercase">Also Predict The House Prices</h3>
                                <p>Allow us to introduce you our prediction system.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="loadDetection" class="btn btn-lg btn-theme">Predict Now</a>
                                	
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
<!-- Search Section start -->
<!-- <div class="search-section ss2 search-area-2 bg-grea">
    <ul class="nav nav-tabs" id="carTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active show" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="one" aria-selected="false">Buy</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="two" aria-selected="false">Rent</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="three-tab" data-toggle="tab" href="#three" role="tab" aria-controls="three" aria-selected="true">Sale</a>
        </li>
    </ul>
    <div class="tab-content" id="carTabContent">
        <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
            <div class="s">
                <div class="container">
                    <div class="search-section-area">
                        <div class="search-area-inner">
                            <div class="search-contents">
                                <form method="GET">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <div class="form-group email">
                                                    <input type="email" name="email" class="form-control search-fields" placeholder="Enter Keyword">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-status">
                                                    <option>Property Status</option>
                                                    <option>For Sale</option>
                                                    <option>For Rent</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-types">
                                                    <option>Property Types</option>
                                                    <option>Apartments</option>
                                                    <option>Houses</option>
                                                    <option>Commercial</option>
                                                    <option>Garages</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="location">
                                                    <option>Location</option>
                                                    <option>United States</option>
                                                    <option>United Kingdom</option>
                                                    <option>American Samoa</option>
                                                    <option>Belgium</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="max-area">
                                                    <option>Bedrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="min-area">
                                                    <option>Bathrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="range-slider">
                                                <div data-min="0" data-max="150000" data-unit="USD" data-min-name="min_price" data-max-name="max_price" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <button class="search-button">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="two" role="tabpanel" aria-labelledby="two-tab">
            <div class="s">
                <div class="container">
                    <div class="search-section-area">
                        <div class="search-area-inner">
                            <div class="search-contents">
                                <form method="GET">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <div class="form-group email">
                                                    <input type="email" name="email" class="form-control search-fields" placeholder="Enter Keyword">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-status">
                                                    <option>Property Status</option>
                                                    <option>For Sale</option>
                                                    <option>For Rent</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-types">
                                                    <option>Property Types</option>
                                                    <option>Apartments</option>
                                                    <option>Houses</option>
                                                    <option>Commercial</option>
                                                    <option>Garages</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="location">
                                                    <option>Location</option>
                                                    <option>United States</option>
                                                    <option>United Kingdom</option>
                                                    <option>American Samoa</option>
                                                    <option>Belgium</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="max-area">
                                                    <option>Bedrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="min-area">
                                                    <option>Bathrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="range-slider">
                                                <div data-min="0" data-max="150000" data-unit="USD" data-min-name="min_price" data-max-name="max_price" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <button class="search-button">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="three" role="tabpanel" aria-labelledby="three-tab">
            <div class="s">
                <div class="container">
                    <div class="search-section-area">
                        <div class="search-area-inner">
                            <div class="search-contents">
                                <form method="GET">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <div class="form-group email">
                                                    <input type="email" name="email" class="form-control search-fields" placeholder="Enter Keyword">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-status">
                                                    <option>Property Status</option>
                                                    <option>For Sale</option>
                                                    <option>For Rent</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="property-types">
                                                    <option>Property Types</option>
                                                    <option>Apartments</option>
                                                    <option>Houses</option>
                                                    <option>Commercial</option>
                                                    <option>Garages</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="location">
                                                    <option>Location</option>
                                                    <option>United States</option>
                                                    <option>United Kingdom</option>
                                                    <option>American Samoa</option>
                                                    <option>Belgium</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="max-area">
                                                    <option>Bedrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="min-area">
                                                    <option>Bathrooms</option>
                                                    <option>2400</option>
                                                    <option>2800</option>
                                                    <option>3200</option>
                                                    <option>3600</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="range-slider">
                                                <div data-min="0" data-max="150000" data-unit="USD" data-min-name="min_price" data-max-name="max_price" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <button class="search-button">Search</button>
                                            </div>
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
</div> -->

<!-- Featured properties start -->
<%-- <div class="featured-properties content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Featured Properties</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="property-box-3">
                        <div class="property-thumbnail">
                            <a href="properties-details.html" class="property-img">
                                <div class="tag-2">For Rent</div>
                                <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-1.jpg" alt="properties">
                                <div class="facilities-list">
                                    <ul>
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <div class="top">
                                <h1 class="title">
                                    <a href="properties-details.html">Masons Villas</a>
                                    <span>$850.00</span>
                                </h1>
                                <div class="location">
                                    <a href="properties-details.html" tabindex="0">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="footer clearfix">
                                <div class="pull-left days">
                                    <p><i class="flaticon-time"></i> 5 Days ago</p>
                                </div>
                                <ul class="pull-right">
                                    <li><a href="#" tabindex="0"><i class="flaticon-favorite"></i></a></li>
                                    <li><a href="#" tabindex="0"><i class="flaticon-multimedia"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-3">
                        <div class="property-thumbnail">
                            <a href="properties-details.html" class="property-img">
                                <div class="tag-2 bg-active">For Sale</div>
                                <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-3.jpg" alt="properties">
                                <div class="facilities-list">
                                    <ul>
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <div class="top">
                                <h1 class="title">
                                    <a href="properties-details.html">Beautiful Single Home</a>
                                    <span>$750.00</span>
                                </h1>
                                <div class="location">
                                    <a href="properties-details.html" tabindex="0">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="footer clearfix">
                                <div class="pull-left days">
                                    <p><i class="flaticon-time"></i> 5 Days ago</p>
                                </div>
                                <ul class="pull-right">
                                    <li><a href="#" tabindex="0"><i class="flaticon-favorite"></i></a></li>
                                    <li><a href="#" tabindex="0"><i class="flaticon-multimedia"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-3">
                        <div class="property-thumbnail">
                            <a href="properties-details.html" class="property-img">
                                <div class="tag-2 bg-active">For Sale</div>
                                <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-4.jpg" alt="properties">
                                <div class="facilities-list">
                                    <ul>
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <div class="top">
                                <h1 class="title">
                                    <a href="properties-details.html">Park Avenue</a>
                                    <span>$850.00</span>
                                </h1>
                                <div class="location">
                                    <a href="properties-details.html" tabindex="0">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="footer clearfix">
                                <div class="pull-left days">
                                    <p><i class="flaticon-time"></i> 5 Days ago</p>
                                </div>
                                <ul class="pull-right">
                                    <li><a href="#" tabindex="0"><i class="flaticon-favorite"></i></a></li>
                                    <li><a href="#" tabindex="0"><i class="flaticon-multimedia"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-3">
                        <div class="property-thumbnail">
                            <a href="properties-details.html" class="property-img">
                                <div class="tag-2 bg-active">For Sale</div>
                                <img class="d-block w-100" src="<%=request.getContextPath()%>/userResources/image/properties-2.jpg" alt="properties">
                                <div class="facilities-list">
                                    <ul>
                                        <li>
                                            <i class="flaticon-square"></i> 4800 sq ft
                                        </li>
                                        <li>
                                            <i class="flaticon-furniture"></i> 3 Beds
                                        </li>
                                        <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <div class="top">
                                <h1 class="title">
                                    <a href="properties-details.html">Big Head House</a>
                                    <span>$850.00</span>
                                </h1>
                                <div class="location">
                                    <a href="properties-details.html" tabindex="0">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="footer clearfix">
                                <div class="pull-left days">
                                    <p><i class="flaticon-time"></i> 5 Days ago</p>
                                </div>
                                <ul class="pull-right">
                                    <li><a href="#" tabindex="0"><i class="flaticon-favorite"></i></a></li>
                                    <li><a href="#" tabindex="0"><i class="flaticon-multimedia"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slick-prev slick-arrow-buton">
                <i class="fa fa-angle-left"></i>
            </div>
            <div class="slick-next slick-arrow-buton">
                <i class="fa fa-angle-right"></i>
            </div>
        </div>
    </div>
</div>

<!-- Services 2 start -->
<div class="services-2 content-area-5 bg-grea-3">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>What are you looking for?</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="row wow">
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="services-demo">
                    <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/img-1.jpg" alt="properties">
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="service-info-3">
                    <div class="icon">
                        <i class="flaticon-apartment"></i>
                    </div>
                    <div class="service-detail">
                        <h3>
                            Apartments
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam.</p>
                    </div>
                </div>
                <div class="service-info-3">
                    <div class="icon">
                        <i class="flaticon-internet"></i>
                    </div>
                    <div class="service-detail">
                        <h3>
                            Houses
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam.</p>
                    </div>
                </div>
                <div class="service-info-3">
                    <div class="icon">
                        <i class="flaticon-vehicle"></i>
                    </div>
                    <div class="service-detail">
                        <h3>
                            Garages
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam.</p>
                    </div>
                </div>
                <div class="service-info-3 mb-0">
                    <div class="icon">
                        <i class="flaticon-coins"></i>
                    </div>
                    <div class="service-detail">
                        <h3>
                            Commercial
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt aliquam.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 --%>
<!-- Recently properties start -->
<%-- <div class="recently-properties content-area-12">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Recently Properties</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="property-box-5">
                        <div class="property-photo">
                            <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/properties-1.jpg" alt="properties">
                            <div class="date-box">For Sale</div>
                        </div>
                        <div class="detail">
                            <div class="heading">
                                <h3>
                                    <a href="properties-details.html">Masons Villas</a>
                                </h3>
                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="properties-listing">
                                <span>3 Beds</span>
                                <span>2 Baths</span>
                                <span>980 sqft</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-5">
                        <div class="property-photo">
                            <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/properties-2.jpg" alt="properties">
                            <div class="date-box">For Rent</div>
                        </div>
                        <div class="detail">
                            <div class="heading">
                                <h3>
                                    <a href="properties-details.html">Luxury Villa</a>
                                </h3>
                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="properties-listing">
                                <span>3 Beds</span>
                                <span>2 Baths</span>
                                <span>980 sqft</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-5">
                        <div class="property-photo">
                            <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/properties-3.jpg" alt="properties">
                            <div class="date-box">For Rent</div>
                        </div>
                        <div class="detail">
                            <div class="heading">
                                <h3>
                                    <a href="properties-details.html">Park avenue</a>
                                </h3>
                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="properties-listing">
                                <span>3 Beds</span>
                                <span>2 Baths</span>
                                <span>980 sqft</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-5">
                        <div class="property-photo">
                            <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/properties-4.jpg" alt="properties">
                            <div class="date-box">For Sale</div>
                        </div>
                        <div class="detail">
                            <div class="heading">
                                <h3>
                                    <a href="properties-details.html">Real Luxury Villa</a>
                                </h3>
                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="properties-listing">
                                <span>3 Beds</span>
                                <span>2 Baths</span>
                                <span>980 sqft</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box-5">
                        <div class="property-photo">
                            <img class="img-fluid" src="<%=request.getContextPath()%>/userResources/image/properties-5.jpg" alt="properties">
                            <div class="date-box">For Rent</div>
                        </div>
                        <div class="detail">
                            <div class="heading">
                                <h3>
                                    <a href="properties-details.html">Luxury Villa</a>
                                </h3>
                                <div class="location">
                                    <a href="properties-details.html">
                                        <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                            <div class="properties-listing">
                                <span>3 Beds</span>
                                <span>2 Baths</span>
                                <span>980 sqft</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slick-btn">
                <div class="slick-prev slick-arrow-buton-2"></div>
                <div class="slick-next slick-arrow-buton-2"></div>
            </div>
        </div>
    </div>
</div>
 --%>
<!-- Categories strat -->
<!-- <div class="categories content-area-8 bg-grea-3">
    <div class="container">
        Main title
        <div class="main-title">
            <h1>Most Popular Places</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="row wow">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-pad">
                        <div class="category">
                            <div class="category_bg_box cat-1-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Florida</a>
                                        </h3>
                                        <div class="category-subtitle">14 Properties</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-pad">
                        <div class="category">
                            <div class="category_bg_box cat-2-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">California</a>
                                        </h3>
                                        <div class="category-subtitle">98 Properties</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-pad">
                        <div class="category">
                            <div class="category_bg_box cat-6-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">New York</a>
                                        </h3>
                                        <div class="category-subtitle">98 Properties</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-pad none-992">
                        <div class="category">
                            <div class="category_bg_box cat-3-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">London</a>
                                        </h3>
                                        <div class="category-subtitle">98 Properties</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-pad">
                        <div class="category">
                            <div class="category_bg_box cat-5-bg">
                                <div class="category-overlay">
                                    <div class="category-content">
                                        <h3 class="category-title">
                                            <a href="#">Australia</a>
                                        </h3>
                                        <div class="category-subtitle">98 Properties</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- Counters strat -->
<!-- <div class="counters">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="media counter-box">
                    <div class="media-left">
                        <i class="flaticon-tag"></i>
                    </div>
                    <div class="media-body">
                        <h1 class="counter">967</h1>
                        <p>Listings For Sale</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="media counter-box">
                    <div class="media-left">
                        <i class="flaticon-business"></i>
                    </div>
                    <div class="media-body">
                        <h1 class="counter">1276</h1>
                        <p>Listings For Rent</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="media counter-box">
                    <div class="media-left">
                        <i class="flaticon-people"></i>
                    </div>
                    <div class="media-body">
                        <h1 class="counter">396</h1>
                        <p>Our Agents</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="media counter-box">
                    <div class="media-left">
                        <i class="flaticon-people-1"></i>
                    </div>
                    <div class="media-body">
                        <h1 class="counter">177</h1>
                        <p>Computer Brokers</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- Our team 2 start -->
<%-- <div class="our-team-2 content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Our Agent</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="team-photo">
                            <a href="#">
                                <img src="<%=request.getContextPath()%>/userResources/image/avatar-7.jpg" alt="agent-2" class="img-fluid">
                            </a>
                        </div>
                        <div class="team-details">
                            <h5><a href="agent-detail.html">Martin Smith</a></h5>
                            <h6>Web Developer</h6>
                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="team-photo">
                            <a href="#">
                                <img src="<%=request.getContextPath()%>/userResources/image/avatar-6.jpg" alt="agent-2" class="img-fluid">
                            </a>
                        </div>
                        <div class="team-details">
                            <h5><a href="agent-detail.html">John Pitarshon</a></h5>
                            <h6>Creative Director</h6>
                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="team-photo">
                            <a href="#">
                                <img src="<%=request.getContextPath()%>/userResources/image/avatar-5.jpg" alt="agent-2" class="img-fluid">
                            </a>
                        </div>
                        <div class="team-details">
                            <h5><a href="#">Karen Paran</a></h5>
                            <h6>Support Manager</h6>
                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="team-photo">
                            <a href="#">
                                <img src="<%=request.getContextPath()%>/userResources/image/avatar-8.jpg" alt="agent-2" class="img-fluid">
                            </a>
                        </div>
                        <div class="team-details">
                            <h5><a href="agent-detail.html">Maria Blank</a></h5>
                            <h6>Office Manager</h6>
                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="team-1">
                        <div class="team-photo">
                            <a href="#">
                                <img src="<%=request.getContextPath()%>/userResources/image/avatar-5.jpg" alt="agent-2" class="img-fluid">
                            </a>
                        </div>
                        <div class="team-details">
                            <h5><a href="#">Karen Paran</a></h5>
                            <h6>Support Manager</h6>
                            <ul class="social-list clearfix">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 --%>
<!-- Testimonial 3 start -->
<%-- <div class="testimonial-3">
    <div class="container">
        <div class="main-title-2">
            <h1>Our Testimonial</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="testimonial-inner">
                        <div class="content-box">
                            <div class="profile-user">
                                <div class="avatar">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-2.jpg" alt="testimonial-avatar" class="img-fluid">
                                </div>
                            </div>
                            <h5>
                                Eliane Perei
                            </h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-full"></i>
                                <span>( 4.5 Reviews )</span>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="testimonial-inner">
                        <div class="content-box">
                            <div class="profile-user">
                                <div class="avatar">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-1.jpg" alt="testimonial-avatar" class="img-fluid">
                                </div>
                            </div>
                            <h5>
                                John Pitarshon
                            </h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-full"></i>
                                <span>( 4.5 Reviews )</span>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="testimonial-inner">
                        <div class="content-box">
                            <div class="profile-user">
                                <div class="avatar">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-1.jpg" alt="testimonial-avatar" class="img-fluid">
                                </div>
                            </div>
                            <h5>
                                Karen Paran
                            </h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-full"></i>
                                <span>( 4.5 Reviews )</span>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="testimonial-inner">
                        <div class="content-box">
                            <div class="profile-user">
                                <div class="avatar">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-3.jpg" alt="testimonial-avatar" class="img-fluid">
                                </div>
                            </div>
                            <h5>
                                Karen Paran
                            </h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-full"></i>
                                <span>( 4.5 Reviews )</span>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 --%>
<!-- Blog start -->
<%-- <div class="blog content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Our Blog</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="blog-3">
                        <div class="blog-photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/blog-1.jpg" alt="blog-1" class="img-fluid">
                            <div class="date-box">
                                <span>17</span>Feb
                            </div>
                        </div>
                        <div class="post-meta">
                            <ul>
                                <li class="profile-user">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-1.jpg" alt="user-blog">
                                </li>
                                <li><span>John Doe</span></li>
                                <li><i class="fa fa-calendar"></i></li>
                                <li><i class="fa fa-comments"></i></li>
                            </ul>
                        </div>
                        <div class="caption detail">
                            <h4><a href="blog-single-sidebar-right.html">Buying a Home</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the dummy text ever since the 1500s, when</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="blog-3">
                        <div class="blog-photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/blog-2.jpg" alt="blog" class="img-fluid">
                            <div class="date-box">
                                <span>17</span>Jan
                            </div>
                        </div>
                        <div class="post-meta">
                            <ul>
                                <li class="profile-user">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-2.jpg" alt="user-blog">
                                </li>
                                <li><span>Alex Teseira</span></li>
                                <li><i class="fa fa-calendar"></i></li>
                                <li><i class="fa fa-comments"></i></li>
                            </ul>
                        </div>
                        <div class="caption detail">
                            <h4><a href="blog-single-sidebar-right.html">Selling Your Real House</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the dummy text ever since the 1500s, when</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="blog-3">
                        <div class="blog-photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/blog-3.jpg" alt="blog" class="img-fluid">
                            <div class="date-box">
                                <span>23</span>May
                            </div>
                        </div>
                        <div class="post-meta">
                            <ul>
                                <li class="profile-user">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-3.jpg" alt="user-blog">
                                </li>
                                <li><span>Karen Paran</span></li>
                                <li><i class="fa fa-calendar"></i></li>
                                <li><i class="fa fa-comments"></i></li>
                            </ul>
                        </div>
                        <div class="caption detail">
                            <h4><a href="blog-single-sidebar-right.html">Find Your Dream Real Estate</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the dummy text ever since the 1500s, when</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="blog-3">
                        <div class="blog-photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/blog-2.jpg" alt="blog" class="img-fluid">
                            <div class="date-box">
                                <span>17</span>Jan
                            </div>
                        </div>
                        <div class="post-meta">
                            <ul>
                                <li class="profile-user">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-2.jpg" alt="user-blog">
                                </li>
                                <li><span>Alex Teseira</span></li>
                                <li><i class="fa fa-calendar"></i></li>
                                <li><i class="fa fa-comments"></i></li>
                            </ul>
                        </div>
                        <div class="caption detail">
                            <h4><a href="blog-single-sidebar-right.html">Selling Your Real House</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the dummy text ever since the 1500s, when</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --%>

<!-- Partners strat -->
<%-- <div class="partners">
    <div class="container">
        <h4>Brands and Partners</h4>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 5, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 3}}, {"breakpoint": 768,"settings":{"slidesToShow": 2}}]}'>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-1.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-2.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-3.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-4.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-5.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-6.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-2.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="<%=request.getContextPath()%>/userResources/image/brand-4.png" alt="brand" class="img-fluid"></div>
            </div>
            <div class="slick-prev slick-arrow-buton">
                <i class="fa fa-angle-left"></i>
            </div>
            <div class="slick-next slick-arrow-buton">
                <i class="fa fa-angle-right"></i>
            </div>
        </div>
    </div>
</div> --%>

<jsp:include page="footer.jsp"></jsp:include>
 
<!-- Full Page Search -->
<!-- <div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>
 -->
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