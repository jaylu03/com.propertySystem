<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Otika - Admin Dashboard Template</title>
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
							<div class="col-12 col-md-6 col-lg-6">
								<div class="card">
									<form>
										<div class="card-header">
											<h4>Default Validation</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Your Name</label> <input type="text"
													class="form-control" required="">
											</div>
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control" required="">
											</div>
											<div class="form-group">
												<label>Subject</label> <input type="email"
													class="form-control">
											</div>
											<div class="form-group mb-0">
												<label>Message</label>
												<textarea class="form-control" required=""></textarea>
											</div>
										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
								<div class="card">
									<form class="needs-validation" novalidate="">
										<div class="card-header">
											<h4>JavaScript Validation</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Your Name</label> <input type="text"
													class="form-control" required="">
												<div class="invalid-feedback">What's your name?</div>
											</div>
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control" required="">
												<div class="invalid-feedback">Oh no! Email is invalid.
												</div>
											</div>
											<div class="form-group">
												<label>Subject</label> <input type="email"
													class="form-control">
												<div class="valid-feedback">Good job!</div>
											</div>
											<div class="form-group mb-0">
												<label>Message</label>
												<textarea class="form-control" required=""></textarea>
												<div class="invalid-feedback">What do you wanna say?</div>
											</div>
										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
							</div>
							<div class="col-12 col-md-6 col-lg-6">
								<div class="card">
									<form>
										<div class="card-header">
											<h4>Server-side Validation</h4>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label>Your Name</label> <input type="text"
													class="form-control is-valid" value="Rizal Fakhri"
													required="">
												<div class="valid-feedback">Good job!</div>
											</div>
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control is-invalid" required=""
													value="rizal@fakhri">
												<div class="invalid-feedback">Oh no! Email is invalid.
												</div>
											</div>
											<div class="form-group">
												<label>Subject</label> <input type="email"
													class="form-control">
											</div>
											<div class="form-group mb-0">
												<label>Message</label>
												<textarea class="form-control is-invalid" required="">Hello, i'm handsome!</textarea>
												<div class="invalid-feedback">Oh no! You entered an
													inappropriate word.</div>
											</div>
										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</form>
								</div>
								<div class="card">
									<form class="needs-validation" novalidate="">
										<div class="card-header">
											<h4>JavaScript Validation (Horizontal Form)</h4>
										</div>
										<div class="card-body">
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Your Name</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" required="">
													<div class="invalid-feedback">What's your name?</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Email</label>
												<div class="col-sm-9">
													<input type="email" class="form-control" required="">
													<div class="invalid-feedback">Oh no! Email is
														invalid.</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-3 col-form-label">Subject</label>
												<div class="col-sm-9">
													<input type="email" class="form-control">
													<div class="valid-feedback">Good job!</div>
												</div>
											</div>
											<div class="form-group mb-0 row">
												<label class="col-sm-3 col-form-label">Message</label>
												<div class="col-sm-9">
													<textarea class="form-control" required=""></textarea>
													<div class="invalid-feedback">What do you wanna say?
													</div>
												</div>
											</div>
										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Submit</button>
										</div>
									</form>
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