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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
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
            <h1>Properties List Fullwidth</h1>
            <ul>
                <li><a href="index.html">Index</a></li>
                <li><span>/</span>Properties List Fullwidth</li>
            </ul>
        </div>
    </div>
</div>

<!-- Properties section body start -->
<div class="properties-section-body content-area">
    <div class="container">
        <div class="row">
            <div class="offset-lg-1 col-lg-10">
                <!-- Option bar start -->
                <div class="option-bar">
                    <div class="float-left">
                        <h4>
                            <span class="heading-icon">
                                <i class="fa fa-th-list"></i>
                            </span>
                            <span class="title-name">Properties List</span>
                        </h4>
                    </div>
                    <div class="float-right cod-pad">
                        <div class="sorting-options">
                            <select class="sorting">
                                <option>New To Old</option>
                                <option>Old To New</option>
                                <option>Properties (High To Low)</option>
                                <option>Properties (Low To High)</option>
                            </select>
                            <a href="properties-list-fullwidth.html" class="change-view-btn active-view-btn"><i class="fa fa-th-list"></i></a>
                            <a href="properties-grid-fullwidth.html" class="change-view-btn"><i class="fa fa-th-large"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Property box 2 start -->
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-1.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Relaxing Apartment</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-2.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Park avenue</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-3.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Modern Family Home</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-1.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Relaxing Apartment</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-2.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Park avenue</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-3.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Modern Family Home</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-1.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Relaxing Apartment</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-2.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Park avenue</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-3.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">Modern Family Home</a>
                                </h3>
                                <p class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-location"></i>20-21 Kathal St. Tampa City, FL
                                    </a>
                                </p>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-furniture"></i>
                                        <span>3 Beds</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-holidays"></i>
                                        <span>1 Baths</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-square"></i>
                                        <span>4800 sq ft</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-vehicle"></i>
                                        <span>1 Garage</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-monitor"></i>
                                        <span>1 TV</span>
                                    </li>
                                    <li>
                                        <i class="flaticon-window"></i>
                                        <span>3 Balcony</span>
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
                <!-- Page navigation start -->
                <div class="pagination-box hidden-mb-45 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                            </li>
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
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
