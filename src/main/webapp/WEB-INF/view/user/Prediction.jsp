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

	<jsp:include page="header.jsp"></jsp:include>

	<!-- Sub banner start -->
	<div class="sub-banner">
    <div class="container">
        <div class="page-name">
            <h1>Prediction</h1>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><span>/</span>Property Prediction</li>
            </ul>
        </div>
    </div>
</div>
	<!-- <div class="sub-banner">
		<div class="container">
			<div class="page-name">
				<h1>Property Prediction</h1>
			</div>
		</div>
	</div> -->

	<!-- Submit Property start -->
	<div class="submit-property content-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="submit-address">
						<form>
							<h3 class="heading-2">Property Prediction</h3>
							<div class="search-contents-sidebar mb-30">
								<div class="row">
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Crime Rate</label> <input type="text"
												class="input-text" id="crimeRate" name="your name">
										</div>
									</div>

									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Residential Land Zone Area</label> <input type="text"
												class="input-text" id="residentialLandZoneArea" name="ResidentialLandZoneArea">
										</div>
									</div>

									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Non Retail Business Area</label> <input type="text"
												class="input-text" id="nonRetailBusinessArea" name="NonRetailBusinessArea">
										</div>
									</div>
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<input type="radio"  name="riv" id="river" value="1" style="margin: 40px 15px 0px 30px"> <label> River
											</label> <input type="radio" id="river" name="riv" value="0" style="margin: 40px 15px 0px 30px"> <label for="checkbox2"> Non River </label>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Nitric Oxides Level</label> <input type="text"
												class="input-text" id="nitricOxidesLevel" name="your name">
										</div>
									</div> 
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Average Room Count</label> <input type="text"
												class="input-text" id="averageRoomCount" name="your name">
										</div>
									</div> 
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>House Age</label> <input type="text"
												class="input-text" id="houseAge" name="your name">
										</div>
									</div> 
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Industrial Location Distance</label> <input type="text"
												class="input-text" id="industrialLocationDistance" name="your name">
										</div>
									</div> 
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Radial Highways Count</label> <input type="text"
												class="input-text" id="radialHighwaysCount" name="your name">
										</div>
									</div> 
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Property Tax Rate</label> <input type="text"
												class="input-text" id="propertyTaxRate" name="your name">
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Pupil Teacher Ratio</label> <input type="text"
												class="input-text" id="pupilTeacherRatio" name="your name">
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Migrant Population Ratio</label> <input type="text"
												class="input-text" id="migrantPopulationRatio" name="your name">
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6">
										<div class="form-group">
											<label>Rural Population Ratio</label> <input type="text"
												class="input-text" id="ruralPopulationRatio" name="your name">
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<button type="button" onclick="prediction()" class="btn btn-md button-theme mb-30">Prediction</button>
								</div>
							</div>
							
							<div class="row">
								<div class="col-md-12">
									<a id="outputId" ></a>
								</div>
							</div>
						</form>
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
	<script src="<%=request.getContextPath()%>/userResources/js/prediction.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
