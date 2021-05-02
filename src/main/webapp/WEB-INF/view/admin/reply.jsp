<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HOUSE MART | Add Category</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

	<%@taglib prefix="h" uri="http://www.springframework.org/tags/form"%>

<body><%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
							<div class="col-12 ">
								<div class="card">
									<h:form action="reply" method="post" modelAttribute="complainVO">
									
									
										<div class="card-header">
											<h4>Reply</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Subject Name</label> <h:input readonly="true" path="complainSubject"
													class="form-control"  />
											</div>
											<div class="form-group mb-0">
												<label>Subject Description</label>
												<h:textarea readonly="true" path="complainDescription" class="form-control" ></h:textarea>
											</div>
											<div class="form-group mb-0">
												<label>Reply</label>
												<h:textarea path="reply" class="form-control" ></h:textarea>
												<h:hidden path="id"/>
												<h:hidden path="complainDate"/>
												<h:hidden path="complainStatus"/>
												<h:hidden path="loginVO.id"/>
											</div>
										</div>
										<div class="card-footer text-right">
											<button type="submit" class="btn btn-primary">Save</button>
										</div>
									</h:form>
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
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<script>
		$(document).ready(function() {
			iziToast.error({
				title : 'Hello, world!',
				message : 'This awesome plugin is made by iziToast',
				position : 'topRight'
			});
		});
	</script>
</body>

</html>