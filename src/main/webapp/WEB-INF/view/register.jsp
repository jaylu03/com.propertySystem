<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register</title>
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
	<%@taglib prefix="h" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<body>
<div class="page_loader"></div>

<!-- Contact section start -->
<div class="contact-section" style="margin: 0; padding:0;">
    <div class="container" style="transform:scale(0.8); ">
        <div class="row login-box" style="box-shadow: 0px 0px 8px 0px grey">
            <div class="col-lg-6 align-self-center pad-0">
                <div class="form-section clearfix">
                    <h3>Create an account</h3><br>
                    <!-- <div class="btn-section clearfix">
                        <a href="/login" class="link-btn active btn-1 default-bg">Login</a>
                        <a href="/register" class="link-btn btn-2 active-bg">Register</a>
                    </div> -->
                    <div class="clearfix"></div>
                    <h:form action="saveRegister" method="post" modelAttribute="registerVO" enctype="multipart/form-data">
						<div class="row">
                        <div class="form-group form-box - col-6">
                            <h:input name="firstName" class="input-text" placeholder="First Name" path="firstName"/>
                        </div>
                        <div class="form-group form-box - col-6">
                            <h:input name="lastName" class="input-text" placeholder="Last Name" path="lastName"/>
                        </div>
                        </div>
                        <div class="form-group form-box">
                            <input type="email" name="email" class="input-text" placeholder="Email Address"/>
                        </div>
                        <div class="form-group form-box">
                            <h:input type="password" name="password" class="input-text" placeholder="Password" path="loginVO.password"/>
                        </div>
                        <div class="form-group form-box clearfix">
                            <h:input type="text" name="phoneNumber" class="input-text" placeholder="Phone Number" path="phoneNumber"/>
                        </div>
                        <div class="form-group form-box">
                        		Aadhaar Card	<input type="file" class="input-text" placeholder="Aadhaar Card" name="file" multiple="multiple"/>
                    	</div>
                        <div class="form-group clearfix">
                            <button type="submit" class="btn-md btn-theme float-left" onclick="onRegister()">Register</button>
                        </div>
                    </h:form>
                    <p>Already a member? <a href="/login">Login here</a></p>
                </div>
            </div>
            <div class="col-lg-6 bg-color-15 align-self-center pad-0 none-992 bg-img">
                   <div class="clearfix">
                    
                        <a href="/register">
                            <img src="<%=request.getContextPath()%>/userResources/image/img-1.jpg" width="500" class="bg-img" alt="black-logo">
                        </a>
                    </div>
                   <%-- <h3>Welcome to Housy</h3> --%>
                   <%--  <div class="social-list">
                        <a href="#" class="facebook-bg">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#" class="twitter-bg">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#" class="google-bg">
                            <i class="fa fa-google"></i>
                        </a>
                        <a href="#" class="linkedin-bg">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </div>
                </div>--%>
            
        </div>
    </div>
</div>
</div>

<script type="text/javascript">
function onRegister(){
debugger
	alert("Register Successfully.. Please wait for Admin verification");
	
}
</script>

<!-- Full Page Search -->
<!-- <div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div> -->


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