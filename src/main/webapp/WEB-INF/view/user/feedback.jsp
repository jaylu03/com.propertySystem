<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Feedback</title>
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
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/star.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/userResources/css/font-awesome.css">

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

	<%@taglib prefix="h" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
	
<body>
<div class="page_loader"></div>


<jsp:include page="header.jsp"></jsp:include>

<!-- Banner start -->
<div class="sub-banner">
    <div class="container">
        <div class="page-name">
            <h1>Feedback</h1>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><span>/</span>Feedback Detail</li>
            </ul>
        </div>
    </div>
</div>
<%-- <div class="blog-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1>Feedback</h1>
                <ul class="breadcrumbs">
                    <li><a href="index">Index</a></li>
                    <li class="active"><span>/</span>Feedback Detail</li>
                </ul>
            </div>
        </div>
    </div>
</div> --%>

<!-- Blog body start -->
<div class="blog-body content-area-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <br>
                <!-- Contact 1 start -->
                <div class="contact-1">
                    <h3 class="heading">Feedback Form</h3>
                    <h:form action="saveFeedback" method="post" modelAttribute="feedbackVO" enctype="multipart/form-data">
                    <%-- <h:hidden path="id"/> --%>
                        <div class="row">
                            <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group subject">
                                  	<h:textarea class="form-control" name="feedback" path="feedbackSubject" placeholder="Feedback"></h:textarea>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div>
                                	<fieldset class="rating" >
										    <h:radiobutton id="star5" name="rating" value="5" path="feedbackRating" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
										    <h:radiobutton id="star4" name="rating" value="4" path="feedbackRating" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
										    <h:radiobutton id="star3" name="rating" value="3" path="feedbackRating" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
										    <h:radiobutton id="star2" name="rating" value="2" path="feedbackRating" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
										    <h:radiobutton id="star1" name="rating" value="1" path="feedbackRating" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
										   
									</fieldset>
                                </div>
                            </div><br><br>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="send-btn">
                                    <button type="submit" class="btn btn-md button-theme">Send Message</button>
                                </div>
                            </div>
                        </div>
                    </h:form>
                </div>
                <br><br>
                 <!-- Heading 2 start -->
                <h3 class="heading-2">Feedback Section</h3>
                <!-- Comments start -->
                <ul class="comments">
                <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                <c:forEach var="i" items="${feedbackList}">
                    <li>
                        <div class="comment">
                            <div class="comment-author">
                                <a href="#">
                                    <img src="<%=request.getContextPath()%>/userResources/image/avatar.png" alt="comments-user">
                                </a>
                            </div>
                            <div class="comment-content">
                                <div class="comment-meta">
                                    <h3>
                                       ${i.loginVO.username}
                                    </h3>
                                    <div class="comment-meta">
                                    <c:forEach begin="1" end="${i.feedbackRating}">
                                    	<i class="fa fa-star"></i>
                                    </c:forEach>
                                 <%-- <p>${i.complainStatus}</p> --%>
                                    </div>
                                </div>
                                <p>${i.feedbackSubject}</p>
                            </div>
                        </div>
                        
                    </li>
                   </c:forEach>
                </ul>
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
