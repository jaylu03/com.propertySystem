<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>House Mart</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/bootstrap-social.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/iziToast.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
  <link rel='shortcut icon' type='image/x-icon' href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="card card-primary">
              <div class="card-header">
                <h4>Login</h4>
              </div>
              <div class="card-body">
                <form method="POST" action="./logindb.jsp" class="needs-validation" novalidate="">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <!--><input id="email" type="email" class="form-control" name="email" tabindex="1" required autofocus>
                    <div class="invalid-feedback">
                      Please fill in your email-->
                      <input type="text" id="un" onkeypress='return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122 || event.charCode>=48 && event.charCode<=57'></input>
						<span style="color: red;display: none" id="sun1">Enter User Name</span>
						<span style="color: red;display: none" id="sun2">Using numeric & alphabets	</span>
						<br><br>
                      
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="d-block">
                    <input type="password" id="pwd" ></input>
						<span style="color: red;display: none" id="spwd1">Enter Password</span>
						<span style="color: red;display: none" id="spwd2">Using Minimum 8 charcter</span>
						<br>

<input type="checkbox" onclick="fn2()">Show Password<br><br>
                     <!-- <label for="password" class="control-label">Password</label>-->
                      <div class="float-right">
                        <a href="auth-forgot-password.html" class="text-small">
                          Forgot Password?
                        </a>
                      </div>
                    </div>
                    <input id="password" type="password" class="form-control" name="password" tabindex="2" required>
                    <div class="invalid-feedback">
                      please fill in your password
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
                      <label class="custom-control-label" for="remember-me">Remember Me</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                      Login
                    </button>
                  </div>
                </form>
                <!-- <div class="text-center mt-4 mb-3">
                  <div class="text-job text-muted">Login With Social</div>
                </div> -->
                <!-- <div class="row sm-gutters">
                  <div class="col-6">
                    <a class="btn btn-block btn-social btn-facebook">
                      <span class="fab fa-facebook"></span> Facebook
                    </a>
                  </div>
                  <div class="col-6">
                    <a class="btn btn-block btn-social btn-twitter">
                      <span class="fab fa-twitter"></span> Twitter
                    </a>
                  </div> -->
                </div>
              </div>
            </div>
            <div class="mt-5 text-muted text-center">
              Don't have an account? <a href="register">Create One</a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
  <!-- JS Libraies -->
  <!-- Page Specific JS File -->
  <!-- Template JS File -->
  <script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="<%=request.getContextPath()%>/adminResources/js/iziToast.min.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/customValidation.js"></script>
</body>

</html>