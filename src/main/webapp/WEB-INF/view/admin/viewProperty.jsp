<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HOUSE MART | View Property</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/datatable.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

<body>

	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>View City</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>Sr.No.</th>
														<th>Category Type</th>
														<th>Subcategory Type</th>
														<th>Construction Status</th>
														<th>State</th>
														<th>City</th>
														<th>Area</th>
														<th>Address</th>
														<th>Bhks</th>
														<th>Property Area</th>
														<th>Owner's Name</th>
														<th>Owner's Contact</th>
														<th>Owner's Email</th>
														<th>Attachments</th>
														<th>Actions</th>
																										
													</tr>
												</thead>
												<tbody>
												
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
													
													<c:forEach items="${propertyList}" var="i"
														varStatus="j">

														<tr>
															<td>${j.count}</td>
															<td>${i.categoryVO.categoryName}</td>
															<td>${i.subCategoryVO.subCategoryName}</td>
															<td>${i.constructionStatusVO.constructionstatusName}</td>
															<td>${i.stateVO.stateName}</td>
															<td>${i.cityVO.cityName}</td>
															<td>${i.areaVO.areaName}</td>
															<td>${i.ownerAddress}</td>
															<td>${i.bhkName}</td>
															<td>${i.propertyAreaName}</td>
															<td>${i.ownerName}</td>
															<td>${i.ownerContact}</td>
															<td>${i.ownerEmail}</td>
															<td><a href="searchPropertyImage?id=${i.id}"><i class="fas fa-eye"
																style="margin-left: 40px;"
																aria-hidden="true"></i></a></td>
		
															<!-- <td><a href="" target="_blank">Link</a></td> -->
															<td>
															<a href="editProperty?id=${i.id}"><i class="fas fa-edit"
																style="padding-right: 15px;"
																aria-hidden="true"></i>
															</a> 
																
																<a href="deleteProperty?id=${i.id}"><i class="fas fa-trash"
																style="color: tomato;" aria-hidden="true"></i>
															</a>	
															</td>
														</tr>
														</c:forEach>										
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>


		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jszip.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vfs_fonts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>