
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>HOME LOAN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/<%=request.getContextPath()%>/userResources/css/animate.min.css">
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
            <h1>Home Loan</h1>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><span>/</span>Bank Detail</li>
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
                            <span class="title-name">Bank Detail List</span>
                        </h4>
                    </div>
                </div>
                <!-- Property box 2 start -->
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.axisbank.com/" target="_blank">Axis Bank</a>
                                </h3>
                                <p class="location">Axix Bank Home Loan Interest Rates are in the range of 6.70% to 8.40% P.A.<br>
                               <b>Toll Free Number</b>
									<br>+91-22-24252525/43252525<br>
                                <b>Axis Bank Limited,</b> <br>Corporate Office, Bombay Dyeing Mills Compound, Pandurang Budhkar Marg,Worli, Mumbai - 400 025<br>
                               <b>Phone:</b> +91-22-24251800<br>
                               <b>Email:</b> <u>pno@axisbank.com</u>
								</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <%-- <div class="col-lg-4 col-md-5 col-pad">
                            <a href="properties-details.html" class="property-img">
                                <img src="<%=request.getContextPath()%>/userResources/image/properties-list-1.jpg" alt="properties" class="img-fluid">
                                <div class="listing-badges">
                                    <span class="featured">Featured</span>
                                    <span class="listing-time">For Sale</span>
                                </div>
                                <div class="price-box">$24,000<small>/mo</small></div>
                            </a>
                        </div> --%>
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.bankofbaroda.in/" target="_blank">Bank of Baroda</a>
                                </h3>
                                <p class="location">Bank of Baroda Home Loan Interest Rates are in the range of 6.75% to 8.25% P.A.<br>
						<!-- 		Factors That Your Home Loan Interest Rate Depends On:-<br>
									1. Loan value: Loan size determines the rate of interest.<br>
									2. Applicant's income<br>
									3. Applicant's credit history<br>
									4. If applicant is an existing borrower with the bank<br>
									5. Type of loan<br>  -->                               
                                	<b>Toll Free Number</b>
									<br>
									1800 258 44 55/1800 102 44 55<br>
									<b>Bank of Baroda</b><br>
									Baroda Bhavan
									7th Floor,R.C. Dutt Road,
									Vadodara-390 007, (Gujarat) India.
									<br>
									<b>Phone No.</b> : (0265) 2316792
									<br>
									<b>Email :</b> <u>cs.ho@bankofbaroda.com</u>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.bankofindia.co.in/" target="_blank">Bank of India</a>
                                </h3>
                                <p class="location">Bank of India Home Loan Interest Rates are in the range of 	6.85% to 7.75% P.A.<br>
                                <b>Toll Free Number</b><br>
                                 1800 103 1906/1800 220 229<br>
                                 <b>BANK OF INDIA</b><br>
									STAR HOUSE C - 5, "G" Block, Bandra Kurla Complex, Bandra (East), Mumbai 400051.
									<br><b>Phone:</b> 022-66684444
									<br><b>Email:</b> <u>HeadOffice.CSD@bankofindia.co.in</u>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.hdfc.com/" target="_blank">HDFC Bank</a>
                                </h3>
                                <p class="location">HDFC Home Loan Interest Rates are in the range of 7.00% to 7.50% P.A.<br>
                                <b>Toll Free Number</b><br>
                                +91 (22) 66316000/+91 (22) 22046834
                                <b>HDFC</b><br>
                                <b>HDFC House,</b><br> H T Parekh Marg, 165-166,Backbay Reclamation, Churchgate,Mumbai-400020
                                <br><b>Phone:</b> +91 (22) 66636000<br>
                                <b>Email:</b> <u>investorcare@hdfc.com</u>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.icicibank.com/" target="_blank">ICICI Bank</a>
                                </h3>
                                <p class="location">ICICI Home Loan Interest Rates are in the range of 7.60% to 7.95% P.A.<br>
                                <b>Toll Free Number</b><br>
                                8000667777/1860 120 7777<br>
                                 <b>ICICI Bank Limited</b><br>
								 ICICI Bank Towers, Bandra-Kurla Complex, Mumbai 400 051<br>
								 <b>Phone:</b> 1800 103 8181
								 <br><b>Email:</b> <u>headservicequality@icicibank.com</u>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.kotak.com/en.html/" target="_blank">Kotak Mahindra Bank</a>
                                </h3>
                                <p class="location">Kotak Mahindra Bank Home Loan Interest Rates are in the range of 6.65% to 7.30% P.A.<br>
                                <b>Toll Free Number</b><br>
                                1860 266 2666<br>
                                <b>Kotak Maindra Bank</b><br>
                                27 BKC, C-27, G Block,Bandra Kurla Complex, Bandra (E), Mumbai-400051.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.pnbindia.in/" target="_blank">Punjab National Bank</a>
                                </h3>
                                <p class="location">Punjab National Bank Home Loan Interest Rates are in the range of 6.70% to 7.55% P.A.<br>
                                <b>Toll Free Number</b><br>
                                1800 180 2222/1800 103 2222<br>
                                <b>Punjab National Bank</b>
                                Plot No 4, Sector -10 Dwarka New Delhi -110075<br> 
                                <b>Email:</b> <u>care@pnb.co.in</u>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.sbi.co.in/" target="_blank">State Bank of India</a>
                                </h3>
                                <p class="location">State Bank of India Home Loan Interest Rates are in the range of 6.95% to 7.90% P.A.<br>
                          		<b>Toll Free Number</b><br>
                          		1800 425 3800/1800 11 2211<br>      
                          		<b>State Bank of India</b>
                          		Madame Cama Road, State Bank Bhavan, Nariman Point, Mumbai-400021, Maharashtra<br>
                          		<b>Email:</b> <u>contactcentre@sbi.co.in</u>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="property-box-2">
                    <div class="row">
                        
                        <div class="col-lg-8 col-md-7 col-pad">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="https://www.unionbankofindia.co.in/english/home.aspx" target="_blank">Union Bank</a>
                                </h3>
                                <p class="location">Union Bank Home Loan Interest Rates are in the range of 6.80% to 7.65% P.A.<br>
                                <b>Toll Free Number</b><br>
                                1800 22 22 44/1800 208 2244/18004251515
                                <b>Union Bank Bhavan</b> 239, Vidhan Bhavan Marg, Nariman Point, Mumbai - 400 021, Maharashtra, India<br>
                                <b>Phone:</b>+91 22-22892000<br>
                                <b>Email:</b> <u>customerservice@www.unionbankng.com</u>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Page navigation start
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
                </div> -->
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

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
