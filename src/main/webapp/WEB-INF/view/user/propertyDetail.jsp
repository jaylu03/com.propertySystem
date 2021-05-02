<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html lang="zxx">
<head>
<title>HOUSE MART</title>
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
<body>
	<div class="page_loader"></div>



	<!-- Main header start -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Sub banner start -->
	<div class="sub-banner">
		<div class="container">
			<div class="page-name">
				<h1>Properties Detail</h1>
				<ul>
					<li><a href="index.html">Index</a></li>
					<li><span>/</span>Properties Detail</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Properties Details page start -->
	<div class="properties-details-page content-area-7">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-xs-12">
					<div class="properties-details-section">
						<div id="propertiesDetailsSlider"
							class="carousel properties-details-sliders slide mb-40">
							<!-- Heading properties start -->
							<div class="heading-properties-2">
								<div class="row">
									<div class="col-md-12">
										<div class="pull-left">
											<h3>${propertyData.propertyVO.subCategoryVO.subCategoryName}</h3>
											<p>
												<i class="fa fa-map-marker"></i> ${propertyData.propertyVO.ownerAddress}
											</p>
										</div>
									</div>
								</div>
							</div>
							<!-- main slider carousel items -->
							<div class="carousel-inner">
								<c:forEach items="${propertyImageList}" var="i" varStatus="j">
								<c:if test="${j.count eq 1}">
								<div class="item active carousel-item" data-slide-number="${j.count}">
										<img
											src="<%=request.getContextPath()%>/documents/propertyImage/${i.fileName}"
											class="img-fluid" alt="slider-properties">
									</div>
								</c:if>
								<c:if test="${j.count ne 1}">
								<div class="item carousel-item" data-slide-number="${j.count}">
										<img
										height="150"
											src="<%=request.getContextPath()%>/documents/propertyImage/${i.fileName}"
											class="img-fluid" alt="slider-properties">
									</div>
								</c:if>
									
								</c:forEach>
							</div>
							<!-- main slider carousel nav controls -->
							<ul
								class="carousel-indicators smail-properties list-inline nav nav-justified">
								<c:forEach items="${propertyImageList}" var="i" varStatus="j">
									<li class="list-inline-item active"><a
										id="carousel-selector-${j.count}" class="selected"
										data-slide-to="${j.count}"
										data-target="#propertiesDetailsSlider"> <img
											src="<%=request.getContextPath()%>/documents/propertyImage/${i.fileName}"
											class="img-fluid" alt="properties-small">
									</a></li>
								</c:forEach>

							</ul>
							<!-- main slider carousel items -->
						</div>
						<!-- Advanced search start -->

						<!-- Tabbing box start -->
						<div class="tabbing tabbing-box tb-2 mb-40">
							
							<div class="tab-content" id="carTabContent">
								<div class="tab-pane fade active show" id="one" role="tabpanel"
									aria-labelledby="one-tab">
									<div class="properties-description mb-50">
										<h3 class="heading-2">Description</h3>
										<p>${propertyData.propertyVO.subCategoryVO.subCategoryDescription}
										<br><strong>Property Type : </strong> ${propertyData.propertyVO.bhkName} BHK
										<br><strong>Property Area : </strong> ${propertyData.propertyVO.propertyAreaName} sqft</p>
										
										<h3 class="heading-2">Owner Details</h3>
										<p><strong>Name : </strong> ${propertyData.propertyVO.ownerName}
										<br><strong>Email : </strong> ${propertyData.propertyVO.ownerEmail}
										<br><strong>Contact Number : </strong> ${propertyData.propertyVO.ownerContact}
										</p>
										
										
									</div>
								</div>
							</div>
						</div>
						<!-- Properties condition start -->
						
						<!-- Properties amenities start -->
						
						
						<!-- Comments start -->
						<!-- Contact 1 start -->
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer start -->
	<jsp:include page="footer.jsp"></jsp:include>


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
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/ie10-viewport-bug-workaround.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBL8kr92JsqkBl9Px8s8mfVtgs5wIMV_MM"></script>
</body>
</html>
