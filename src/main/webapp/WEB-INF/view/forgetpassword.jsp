<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">

<!-- External CSS libraries -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap-submenu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/leaflet.css"
	type="text/css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/map.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/flaticon.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/dropzone.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/slick.css">

<!-- Custom Folder stylesheet -->

	
	
<script
	src="<%=request.getContextPath()%>/adminResources/js/customValidation.js"></script>



<!-- Custom stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/style.css">
<link rel="stylesheet" type="text/css" id="style_sheet"
	href="<%=request.getContextPath()%>/userResources/css/default.css">

<!-- Favicon icon -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

<!-- Google fonts -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CRoboto:300,400,500,700&display=swap">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/ie10-viewport-bug-workaround.css">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="<%=request.getContextPath()%>/userResources/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="<%=request.getContextPath()%>/userResources/js/ie-emulation-modes-warning.js"></script>

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
	<div class="contact-section">
		<div class="container">
			<div class="row login-box">
				<div class="col-lg-6 align-self-center pad-0">
					<div class="form-section align-self-center">

						<h3>Forgot Password</h3>
						<div class="clearfix"></div>
						<form name="form">
							<div class="form-group form-box">
								<input type="email" class="input-text" placeholder="User Name" id="username"> <!-- name="username" -->
							</div>
							<div class="form-group">
								<button type="button" class="btn-md btn-theme float-left"
									onclick="validateEmail1()">
									<span>Send OTP</span>
								</button>
								<!-- <a href="forgot-password.html" class="forgot-password">Forgot Password</a> -->
							</div>
						</form>
					</div>
				</div>
				<div
					class="col-lg-6 bg-color-15 align-self-center pad-0 none-992 bg-img">
					<div class="clearfix">
						<a href="/login"> <img
							src="<%=request.getContextPath()%>/userResources/image/img-1.jpg"
							width="500" class="bg-img" alt="black-logo">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Enter OTP</h4>
				</div>
				<form action="verifyOTP" method="post">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<label class="control-label form-label">OTP<span
									class="highlight">*</span>
								</label><input id="forgetpassword" type="text" name="otp" placeholder=""
									class="form-control form-input" />
								<!--p.help-block Warning !-->
							</div>
						</div>
						<input type="hidden" name="token" value="" id="token"> <input
							type="hidden" name="email" value="" id="email">
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-login btn-green">
							<span>Verify</span>
						</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	
	

	<!-- Full Page Search -->
	<div id="full-page-search">
		<button type="button" class="close">?</button>
		<form action="index.html#">
			<input type="search" value="" placeholder="type keyword(s) here" />
			<button type="submit" class="btn btn-sm button-theme">Search</button>
		</form>
	</div>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-2.2.0.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap-submenu.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/rangeslider.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mb.YTPlayer.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/wow.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.easing.1.3.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.scrollUp.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/leaflet.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/leaflet-providers.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/leaflet.markercluster.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/dropzone.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/slick.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.filterizr.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.countdown.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/maps.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/app.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/customValidation.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>