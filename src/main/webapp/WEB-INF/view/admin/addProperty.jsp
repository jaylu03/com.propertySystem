<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>HOUSE MART | Add Property</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/dropzone.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/custom.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
<link rel='shortcut icon' type='image/x-icon'
	href='<%=request.getContextPath()%>/adminResources/image/favicon.ico' />

<style>
	
</style>
</head>
	<%@taglib prefix="h" uri="http://www.springframework.org/tags/form"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
                <h4 class="header">Add Property</h4>
              </div>
              <%-- <% 
   			  Boolean pass = true;
              String pas = (String)session.getAttribute("pass");  
              out.println(pass);
              out.println(pas);
              %> --%>
              <div class="card-body">
                <h:form action="saveProperty" method="post" modelAttribute="propertyVO" enctype="multipart/form-data" onsubmit="return addProperty()">
                <h:hidden path="id"/>
                  <div class="row">
                    <div class="form-group col-6">
                      
                      <h:select class="form-control" path="categoryVO.id" id="categoryVOId">
                      	<option selected value="none">Select Category</option>
							 <c:forEach items="${categoryList}" var="i">
								<option value="${i.id}"> ${i.categoryName}</option>
							</c:forEach>                     	
                      	<!-- <option>Apartment</option>
                      	<option>Bunglow</option>
                      	<option>Flat</option>
                      	<option>Plot</option> -->
                      </h:select>
                    </div>
                    <div class="form-group col-6">
                      <h:select class="form-control" path="subCategoryVO.id" id="subcategoryVOId">
                      	<option selected value="none">Select Subcategory </option>
                      	<c:forEach items="${subCategoryList}" var="i">
								<option value="${i.id}"> ${i.subCategoryName}</option>
						</c:forEach>
                      	<!-- <option>Apartment</option>
                      	<option>Bunglow</option>
                      	<option>Flat</option>
                      	<option>Plot</option> -->
                      </h:select>
                    </div>
                    <div class="form-group col-12">
                      <h:select class="form-control" path="constructionStatusVO.id" id="constructionstatusVOId">
                      	<option selected value="none">Select Construction Status </option>
                      	<c:forEach items="${constructionStatusList}" var="i">
							<option value="${i.id}"> ${i.constructionstatusName}</option>
						</c:forEach>
                      	<!-- <option>Ready To  Move</option>
                      	<option>Fully Furnished</option>
                      	<option>Under Construction</option> -->
                      </h:select>
                    </div>
                    <div class="form-group col-12"><label>LOCATION</label></div>
                    <div class="form-group col-4">
                      <h:select class="form-control" path="stateVO.id" id="stateVOId" size="1" onchange="makeSubmenu(this.value)">
					        <option selected value="none">Select State</option>
					     		<c:forEach items="${stateList}" var="i">
									<option value="${i.id}"> ${i.stateName}</option>
								</c:forEach>
        			</h:select>
                    </div>
                         <div class="form-group col-4">
                      <h:select class="form-control" path="cityVO.id" id="cityVOId" size="1" >
					        <option selected value="none">Select City</option>
					        <c:forEach items="${cityList}" var="i">
									<option value="${i.id}"> ${i.cityName}</option>
							</c:forEach>
        			</h:select>	
                    </div>
                         <div class="form-group col-4">
               			<h:select class="form-control" path="areaVO.id" id="areaVOId">
                      	<option selected value="none">Select Area </option>
                      		<c:forEach items="${areaList}" var="i">
									<option value="${i.id}"> ${i.areaName}</option>
							</c:forEach>
                      </h:select>
                    </div>
                    
                    <div class="form-group col-6">
                      <label for="bhks">BHK</label>
                      <h:input type="number" class="form-control" path="bhkName" id="bhkName"/>
                    </div>
                    <div class="form-group col-6">
                      <label for="property-area">Property Area(Sq. Ft.)</label>
                      <h:input type="number" class="form-control" path="propertyAreaName" id="propertyAreaName" onkeypress='return event.charCode>=48 && event.charCode<=57'/>
                    </div>
                    <div class="form-group col-6">
						<label>Owner's Name</label> <h:input type="text"
							class="form-control" path="ownerName" id="ownerName" onkeypress='return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122'/>
					</div>
					<div class="form-group col-6">
						<label>Owner's Contact</label> <h:input type="number" maxlength="10"
							class="form-control" path="ownerContact" id="ownerContact" onkeypress='return event.charCode>=48 && event.charCode<=57'/>
					</div>
					<div class="form-group col-12">
						<label>Owner's Email</label> <h:input type="email"
							class="form-control" path="ownerEmail" id="ownerEmail"/>
					</div>
					<div class="form-group col-12">
                      <label class="">Address</label>
                      <div class="">
                        <h:textarea class="form-control" rows="4" cols="140" path="ownerAddress" id="ownerAddress"></h:textarea>
                        </div>
                    </div>
                	<div class="form-group col-12">
                      <label class="">Photos</label>
                      <div class="">
                        <input type="file" class="form-control" name="file" id="file" multiple="multiple"/>
                        </div>
                    </div>
                  	<div class="card-footer text-right">
						<button class="btn btn-primary">Save</button>
					</div>
					</div>
                </h:form>
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
	<!-- Template JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="<%=request.getContextPath()%>/adminResources/js/custom.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/toaster.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/customValidation.js"></script>
	<script>
	

	// DropzoneJS
	if (window.Dropzone) {
	  Dropzone.autoDiscover = false;
	}

	var dropzone = new Dropzone("#mydropzone", {
	  url: "#"
	});

	var minSteps = 6,
	  maxSteps = 60,
	  timeBetweenSteps = 100,
	  bytesPerStep = 100000;

	dropzone.uploadFiles = function (files) {
	  var self = this;

	  for (var i = 0; i < files.length; i++) {

	    var file = files[i];
	    totalSteps = Math.round(Math.min(maxSteps, Math.max(minSteps, file.size / bytesPerStep)));

	    for (var step = 0; step < totalSteps; step++) {
	      var duration = timeBetweenSteps * (step + 1);
	      setTimeout(function (file, totalSteps, step) {
	        return function () {
	          file.upload = {
	            progress: 100 * (step + 1) / totalSteps,
	            total: file.size,
	            bytesSent: (step + 1) * file.size / totalSteps
	          };

	          self.emit('uploadprogress', file, file.upload.progress, file.upload.bytesSent);
	          if (file.upload.progress == 100) {
	            file.status = Dropzone.SUCCESS;
	            self.emit("success", file, 'success', null);
	            self.emit("complete", file);
	            self.processQueue();
	          }
	        };
	      }(file, totalSteps, step), duration);
	    }
	  }
	}
	</script>
	<script>
	"use strict";

	// DropzoneJS
	if (window.Dropzone) {
	  Dropzone.autoDiscover = false;
	}

	var dropzone = new Dropzone("#mydropzone", {
	  url: "#"
	});

	var minSteps = 6,
	  maxSteps = 60,
	  timeBetweenSteps = 100,
	  bytesPerStep = 100000;

	dropzone.uploadFiles = function (files) {
	  var self = this;

	  for (var i = 0; i < files.length; i++) {

	    var file = files[i];
	    totalSteps = Math.round(Math.min(maxSteps, Math.max(minSteps, file.size / bytesPerStep)));

	    for (var step = 0; step < totalSteps; step++) {
	      var duration = timeBetweenSteps * (step + 1);
	      setTimeout(function (file, totalSteps, step) {
	        return function () {
	          file.upload = {
	            progress: 100 * (step + 1) / totalSteps,
	            total: file.size,
	            bytesSent: (step + 1) * file.size / totalSteps
	          };

	          self.emit('uploadprogress', file, file.upload.progress, file.upload.bytesSent);
	          if (file.upload.progress == 100) {
	            file.status = Dropzone.SUCCESS;
	            self.emit("success", file, 'success', null);
	            self.emit("complete", file);
	            self.processQueue();
	          }
	        };
	      }(file, totalSteps, step), duration);
	    }
	  }
	}
	</script>
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