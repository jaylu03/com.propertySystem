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
  <jsp:include page="header.jsp"></jsp:include>
  <jsp:include page="menu.jsp"></jsp:include>
  
  <div class="main-content" style="min-height: 562px;">
        <section class="section">
          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Write Your Post</h4>
                  </div>
                  <div class="card-body">
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Subject</label>
                      <div class="col-sm-12 col-md-7">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Content</label>
                      <div class="col-12 col-md-3 col-lg-3">
                        <textarea class="summernote-simple" rows="4" cols="50"></textarea>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Attachments</label>
                      <div class="col-sm-12 col-md-7">
                        <div id="image-preview" class="image-preview">
                          <label for="image-upload" id="image-label">Choose File</label>
                          <input type="file" name="image" id="image-upload">
                        </div>
                      </div>
                    </div>
                    <div class="form-group row mb-4">
                      <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                      <div class="col-sm-12 col-md-7">
                        <button class="btn btn-primary">Post</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        
  
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