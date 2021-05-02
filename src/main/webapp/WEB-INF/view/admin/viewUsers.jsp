<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HOUSE MART | View Users</title>
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
										<h4>View Users</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>Sr.No.</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Email</th>
														<th>Password</th>
														<th>Phone Number</th>
														<th>Aadhaar Card</th>
														<th>Actions</th>
																										
													</tr>
												</thead>
												<tbody>
												
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

													<c:forEach items="${searchList}" var="i" varStatus="j">
													
													<tr>
														<td>${j.count}</td>
														<td>${i.firstName}</td>
														<td>${i.lastName}</td>
														<td>${i.loginVO.username}</td>
														<td>${i.loginVO.password}</td>
														<td>${i.phoneNumber}</td>
														<td><a href="<%=request.getContextPath()%>/documents/aadhaarCard/${i.fileName}" target="_blank">
														<i class="fas fa-eye"
																style="margin-left: 40px;"
																aria-hidden="true"></i></a></td>
														 <td>
															<c:if test="${i.loginVO.enabled eq '0' }">
															<a href="takeAction?regid=${i.id}&type=accept">
																<button class="btn btn-outline-success">ACCEPT</button>
															</a>
															 
															<a href="takeAction?regid=${i.id}&type=reject">
																<button class="btn btn-outline-danger">REJECT</button>
															</a>
															</c:if>
															
															<%-- <c:if test="${i.userStatus eq 'Pending'}">
															<a href="getReplyById?id=${i.id}"><button class="btn btn-outline-primary">REPLY</button></a>
															</c:if>
															
															<c:if test="${i.userStatus ne 'Pending'}">
															<button class="btn btn-outline-success">Reject</button>
															</c:if> --%>
															
															
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