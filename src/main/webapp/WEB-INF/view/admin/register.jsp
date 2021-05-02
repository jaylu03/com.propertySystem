<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>House Mart</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/selectric.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./<%=request.getContextPath()%>/adminResources/css/register.css">
</head>

<body>
  <div class="loader"></div>
  <jsp:include page="menu.jsp"></jsp:include>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="card card-primary">
              <div class="card-header">
                <h4 class="header">REGISTER</h4>
              </div>
              <%-- <% 
   			  Boolean pass = true;
              String pas = (String)session.getAttribute("pass");  
              out.println(pass);
              out.println(pas);
              
              
              %> --%>
              <div class="card-body">
                <form method="POST" action="./registerdb.jsp">
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="frist_name">First Name</label>
                      <input id="frist_name" type="text" class="form-control" name="first_name" autofocus required>
                    </div>
                    <div class="form-group col-6">
                      <label for="last_name">Last Name</label>
                      <input id="last_name" type="text" class="form-control" name="last_name" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control" name="email" required>
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="phoneno">Mobile Number</label>
                    <input id="phoneno" type="number" class="form-control" name="phoneno" required>
                    <div class="invalid-feedback">
                    </div></div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="password" class="d-block">Password</label>
                      <input id="password" type="password" class="form-control pwstrength" data-indicator="pwindicator"
                        name="password" required>
                      <div id="pwindicator" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                      </div>
                    </div>
                    <div class="form-group col-6">
                      <label for="password2" class="d-block" >Password Confirmation</label>
                      <input id="password2" type="password" class="form-control" name="password-confirm" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <button id="submit-btn"  type="Submit" class="btn btn-primary btn-lg btn-block">
                      Register
                    </button>
                  </div>
                </form>
              </div>
              <div class="mb-4 text-muted text-center">
                Already Registered? <a href="login.jsp">Login</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <script type="text/javascript">
  const check = function() {
	  document.getElementById("submit-btn").addEventListener("click", function(event){
		  event.preventDefault()
		});
	  console.log(document.getElementById('password').value);
	  console.log(document.getElementById('password2').value);
	  if (document.getElementById('password').value ==
	    document.getElementById('password2').value) {
	    $(this).trigger(e.type);
	  } else {
	   alert("Password is not matching");
	  }
	}
  </script>
  <!-- General JS Scripts -->
  <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
  <!-- JS Libraies -->
  <script src="<%=request.getContextPath()%>/adminResources/js/jquery.pwstrength.min.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/jquery.selectric.min.js"></script>
  <!-- Page Specific JS File -->
  <script src="<%=request.getContextPath()%>/adminResources/js/auth-register.js"></script>
  <!-- Template JS File -->
  <script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
</body>

</html>