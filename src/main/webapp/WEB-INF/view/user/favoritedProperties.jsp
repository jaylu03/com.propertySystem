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
            <h1>Favorited Properties</h1>
            <ul>
                <li><a href="index.html">Index</a></li>
                <li><span>/</span>Favorited Properties</li>
            </ul>
        </div>
    </div>
</div>

<!-- Favorited properties start -->
<div class="favorited-properties content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-12 col-sm-12">
                <!-- Avatar start -->
                <div class="edit-profile-photo">
                    <img src="<%=request.getContextPath()%>/userResources/image/avatar-11.jpg" alt="profile-photo" class="img-fluid">
                    <div class="change-photo-btn">
                        <div class="photoUpload">
                            <span><i class="fa fa-upload"></i> Upload Photo</span>
                            <input type="file" class="upload">
                        </div>
                    </div>
                </div>
                <!-- Avatar end -->

                <!-- My account box start -->
                <div class="my-account-box">
                    <ul>
                        <li>
                            <a href="my-profile.html">
                                <i class="flaticon-people"></i>My Profile
                            </a>
                        </li>
                        <li>
                            <a href="favorited-properties.html" class="active">
                                <i class="flaticon-favorite"></i>Favorited Properties
                            </a>
                        </li>
                        <li>
                            <a href="my-properties.html">
                                <i class="flaticon-internet"></i>My Properties
                            </a>
                        </li>
                        <li>
                            <a href="submit-property.html">
                                <i class="flaticon-cross"></i>Submit New Property
                            </a>
                        </li>
                        <li>
                            <a href="change-password.html">
                                <i class="flaticon-lock"></i>Change Password
                            </a>
                        </li>
                        <li>
                            <a href="index.html">
                                <i class="flaticon-exit"></i>Log Out
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- My account box end -->
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12">
                <!-- Heading -->
                <h3 class="heading-2">Favorited Properties</h3>
                <div class="my-properties">
                    <table class="table brd-none">
                        <thead>
                        <tr>
                            <th>Property</th>
                            <th></th>
                            <th class="hedin-div">Date</th>
                            <th><span class="hedin-div">Views</span></th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-1.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Modern Family Home</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 27,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">7.02.2018</td>
                            <td> <span class="hedin-div">421</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-2.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Beautiful Single Home</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 19,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">4.07.2018</td>
                            <td> <span class="hedin-div">365</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-3.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Masons Villas</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 19,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">9.03.2018</td>
                            <td> <span class="hedin-div">165</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-1.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Modern Family Home</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 27,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">7.02.2018</td>
                            <td> <span class="hedin-div">421</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-2.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Beautiful Single Home</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 19,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">4.07.2018</td>
                            <td> <span class="hedin-div">365</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <tr class="brd-none">
                            <td class="image">
                                <a href="properties-details.html"><img alt="properties-small" src="<%=request.getContextPath()%>/userResources/image/small-properties-3.jpg" class="img-fluid"></a>
                            </td>
                            <td>
                                <div class="inner">
                                    <h5><a href="properties-details.html">Masons Villas</a></h5>
                                    <figure class="hedin-div"><i class="fa fa-map-marker"></i> 123 Kathal St. Tampa City</figure>
                                    <div class="price-month">$ 19,000</div>
                                </div>
                            </td>
                            <td class="hedin-div">9.03.2018</td>
                            <td> <span class="hedin-div">165</span></td>
                            <td class="actions">
                                <a href="#" class="edit"><i class="fa fa-pencil"></i>Edit</a>
                                <a href="#"><i class="delete fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
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
