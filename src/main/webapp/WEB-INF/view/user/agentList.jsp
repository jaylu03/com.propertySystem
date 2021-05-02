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
            <h1>Agent List</h1>
            <ul>
                <li><a href="index.html">Index</a></li>
                <li><span>/</span>Agent List</li>
            </ul>
        </div>
    </div>
</div>

<!-- Our team 4 start -->
<div class="our-team-4 content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="option-bar">
                    <div class="float-left">
                        <h4>
                            <span class="heading-icon">
                                <i class="fa fa-th-list"></i>
                            </span>
                            <span class="title-name">Agent List</span>
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
                            <a href="agent-list-2.html" class="change-view-btn active-view-btn"><i class="fa fa-th-list"></i></a>
                            <a href="agent-grid-2.html" class="change-view-btn"><i class="fa fa-th-large"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-9.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Creative Director</h5>
                            <h4>
                                <a href="agent-detail.html">Eliane Pereira</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-10.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Office Manager</h5>
                            <h4>
                                <a href="agent-detail.html">Karen Paran</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-10.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Support Manager</h5>
                            <h4>
                                <a href="agent-detail.html">Karen Paran</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-9.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Web Developer</h5>
                            <h4>
                                <a href="agent-detail.html">Eliane Pereira</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-9.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Creative Director</h5>
                            <h4>
                                <a href="agent-detail.html">Eliane Pereira</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-10.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Office Manager</h5>
                            <h4>
                                <a href="agent-detail.html">Karen Paran</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-10.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Support Manager</h5>
                            <h4>
                                <a href="agent-detail.html">Karen Paran</a>
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
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="row team-4">
                    <div class="col-xl-5 col-lg-5 col-md-12 col-pad ">
                        <div class="photo">
                            <img src="<%=request.getContextPath()%>/userResources/image/avatar-9.jpg" alt="agent" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-12 col-pad align-self-center">
                        <div class="detail">
                            <h5>Web Developer</h5>
                            <h4>
                                <a href="agent-detail.html">Eliane Pereira</a>
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
