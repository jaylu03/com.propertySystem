<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HOUSE MART | View Complain</title>
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
										<h4>View Complains<h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>Sr.No.</th>
														<th>Complain Subject</th>
														<th>Complain Description</th>
														<th>Complain Date</th>
														<th>Reply</th>
														<th>Reply Date</th>
														<!-- <th>Actions</th> -->
														 
														
														<!-- <th>Complaint Reply</th> -->
																										
													</tr>
												</thead>
												<tbody>
												
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
												
												<c:forEach items="${complainList}" var="i"
														varStatus="j">
														
												<tr>
															<td>${j.count}</td>
															<td>${i.complainSubject}</td>
															<td>${i.complainDescription}</td>
															<td>${i.complainDate}</td>
															<td>
															<c:if test="${i.complainStatus eq 'Pending'}">
															<a href="getReplyById?id=${i.id}"><button class="btn btn-outline-primary">REPLY</button></a>
															</c:if>
															
															<c:if test="${i.complainStatus ne 'Pending'}">
															<button class="btn btn-outline-success">${i.complainStatus}</button>
															</c:if>
															</td> 
															<%-- <td>${i.reply}</td> --%>
															<td>${i.replyDate}</td>
																
																
																<%-- <a href="editCategory?id=${i.id}"> <i class="fas fa-edit"
																style="padding-right: 15px;"
																aria-hidden="true"></i>
																</a> --%>
																
																
															<%-- <td>
															<a href="editArea?id=${i.id}"><i class="fas fa-edit"
																style="padding-right: 15px;"
																aria-hidden="true"></i>
															</a> 
																
																<a href="deleteArea?id=${i.id}"><i class="fas fa-trash"
																style="color: tomato;" aria-hidden="true"></i>
															</a>	
															</td> --%>
														</tr>
													</c:forEach>
												
												<%-- <%
													while(rs.next()){
														
														String fn = rs.getString("firstname");
														String ln = rs.getString("lastname");
														String email = rs.getString("email");
														String phone = rs.getString("phonenumber");
														String psw = rs.getString("password");
													
													%>
													<tr>
														<td><%out.println(fn); %></td>
														<td><%out.println(ln); %></td>
														<td><%out.println(email); %></td>
														<td><%out.println(phone); %></td>
												 --%><!-- 		<td>
															<i class="fas fa-trash"
																style="color: tomato; margin-left:15px;"
															></i>
														</td> -->
									<%-- 	<td>
											<% 
											if(fn.equals("Jay")){ %>
												<span class="badge badge-success">Replied</span>
											<% }
											else{ %>
												<a href="complainReply.jsp" class="btn btn-outline-primary">Reply</a>
											<% } %>	
										</td>
														
										<td>
											<% if(fn.equals("Jay")){
											%>
											<span class="">This is the example of the complains reply</span>
											<% } %>				
										</td> --%>
													<!-- </tr> -->
											<%-- 		<% } %> --%>
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