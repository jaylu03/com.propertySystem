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
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/override.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/userResources/js/html5shiv.min.js"></script>
    <script src="<%=request.getContextPath()%>/userResources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="page_loader"></div>

<jsp:include page="header.jsp"></jsp:include>

<div class="sub-banner">
    <div class="container">
        <div class="page-name">
            <h1>Buy House</h1>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><span>/</span>Buy House</li>
            </ul>
        </div>
    </div>
</div>

<!-- Banner start -->
<%-- <div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item banner-max-height item-bg active">
                <img class="d-block w-100 h-100" src="<%=request.getContextPath()%>/userResources/image/banner-4.jpg" alt="banner">
                <!-- <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <div class="text-sections">
                                <h3 class="text-uppercase">Your Dream Luxury Apartments</h3>
                                <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="#" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-100" src="<%=request.getContextPath()%>/userResources/image/banner-3.jpg" alt="banner">
                <!-- <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
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
                </div> -->
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-100" src="<%=request.getContextPath()%>/userResources/image/banner-1.jpg" alt="banner">
                <!-- <div class="carousel-caption banner-slider-inner d-flex h-100 text-center">
                    <div class="carousel-content container">
                        <div class="text-center">
                            <div class="btn-sections">
                                <h3 class="text-uppercase">Sweet Home For Small Family</h3>
                                <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
                            </div>
                            <div class="btn-sections">
                                <a href="#" class="btn btn-lg btn-theme">Get Started Now</a>
                                <a href="#" class="btn btn-lg btn-white-lg-outline">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div> -->
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
</div> --%>

<!-- Search Section start -->
<div class="search-section ss2 search-area-2 bg-grea">
    
    <div class="tab-content" id="carTabContent">
        <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
            <div class="s">
                <div class="container">
                    <div class="search-section-area">
                        <div class="search-area-inner">
                            <div class="search-contents">
                            <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                                <form method="post" action="getProperty">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="stateId">
                                                   <option selected value="none">Select State</option>
					     							<c:forEach items="${stateList}" var="i">
													<option value="${i.id}"> ${i.stateName}</option>
												</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="cityId">
                                                    <option selected value="none">Select City</option>
					       							<c:forEach items="${cityList}" var="i">
														<option value="${i.id}"> ${i.cityName}</option>
													</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                            <div class="form-group">
                                                <select class="selectpicker search-fields" name="areaId">
                                                   <option selected value="none">Select Area </option>
                      								<c:forEach items="${areaList}" var="i">
													<option value="${i.id}"> ${i.areaName}</option>
													</c:forEach>
                                                </select>
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
                                <form method="post" action="">
                                    <div class="row">
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
</div>

<!-- Featured properties start -->
<div class="featured-properties content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Featured Properties</h1>
            <p></p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel cusCardContainer" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                
                <c:forEach var="i" items="${propertyImageList}">
                <div class="slick-slide-item" style="height: 500px;width: 350px">
                    <div class="property-box-3 cusCard" >
                        <div class="property-thumbnail">
                            <a href="propertiesDetails?id=${i.propertyVO.id}" class="property-img">
                                <div class="tag-2">For Sell</div>
                                <img class="d-block w-100" src="<%=request.getContextPath()%>/documents/propertyImage/${i.fileName}" alt="properties" height="300px" width="350px">
                                <div class="facilities-list">
                                    <ul>
                                        <li>
                                             ${i.propertyVO.propertyAreaName} sq ft
                                        </li>
                                        <li>
                                            <i class="fa fa-home"></i> ${i.propertyVO.bhkName} BHK
                                        </li>
                                        <!-- <li>
                                            <i class="flaticon-holidays"></i> 2 Baths
                                        </li> -->
                                    </ul>
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <div class="top" >
                                <h1 class="title">
                                    <a style="color: black" href="propertiesDetails?id=${i.propertyVO.id}">${i.propertyVO.subCategoryVO.subCategoryName}</a>
                                    <span><i class="fa fa-user" style="margin-right: 5px; color: black;"></i>${i.propertyVO.ownerName}</span>
                                </h1>
                                <div class="location">
                                    <a href="propertiesDetails?id=${i.propertyVO.id}" tabindex="0">
                                        <i class="fa fa-map-marker"></i>${i.propertyVO.ownerAddress}
                                    </a>
                                </div>
                            </div>
                            <div class="footer clearfix">
                                <div class="pull-left days">
                                    <p><i class="fa fa-envelope" style="margin-right: 7px"></i>${i.propertyVO.ownerEmail}</p>
                                </div>
                               <!--  <ul class="pull-right">
                                    <li><a href="#" tabindex="0"><i class="flaticon-favorite"></i></a></li>
                                    <li><a href="#" tabindex="0"><i class="flaticon-multimedia"></i></a></li>
                                </ul> -->
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
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



<!-- Categories strat -->

<!-- Counters strat -->


<!-- Our team 2 start -->


<!-- Testimonial 3 start -->


<!-- Blog start -->


<!-- Partners strat -->

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