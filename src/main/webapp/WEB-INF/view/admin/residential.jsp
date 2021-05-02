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

<body  onload="resetSelection()">
  <div class="loader"></div>
  <jsp:include page="header.jsp"></jsp:include>
  <jsp:include page="menu.jsp"></jsp:include>
  <div id="app">
    <section class="section mt-5">
      <div class="container mt-2">
        <div class="row">
          <div class="mt-5 col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="card card-primary">
              <div class="card-header">
                <h4 class="header">Residential Category</h4>
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
                      <label for="frist_name">Property Type</label>
                      <select class="form-control">
                      	<option>Select Option </option>
                      	<option>Apartment</option>
                      	<option>Bunglow</option>
                      	<option>Flat</option>
                      	<option>Plot</option>
                      </select>
                    </div>
                    <div class="form-group col-6">
                      <label for="frist_name">Construction Status</label>
                      <select class="form-control">
                      	<option>Select Option </option>
                      	<option>Ready To  Move</option>
                      	<option>Fully Furnished</option>
                      	<option>Under Construction</option>
                      </select>
                    </div>
                    <div class="form-group col-12"><label>LOCATION</label></div>
                    <div class="form-group col-4">
                      <label for="frist_name">State</label>
                      <select class="form-control" id="stateSelect" size="1" onchange="makeSubmenu(this.value)">
					        <option value="" disabled selected>Choose State</option>
					        <option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chandigarh">Chandigarh</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
							<option value="Daman and Diu">Daman and Diu</option>
							<option value="Delhi">Delhi</option>
							<option value="Lakshadweep">Lakshadweep</option>
							<option value="Puducherry">Puducherry</option>
							<option value="Goa">Goa</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jammu and Kashmir">Jammu and Kashmir</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Manipur">Manipur</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Mizoram">Mizoram</option>
							<option value="Nagaland">Nagaland</option>
							<option value="Odisha">Odisha</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Sikkim">Sikkim</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
							<option value="Telangana">Telangana</option>
							<option value="Tripura">Tripura</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="Uttarakhand">Uttarakhand</option>
							<option value="West Bengal">West Bengal</option>
        			</select>
               
                    </div>
                         <div class="form-group col-4">
                      <label for="frist_name">City</label>
                      <select class="form-control" id="citySelect" size="1" >
					        <option value="" disabled selected>Choose City</option>
					        <option></option>
               
        			</select>	
                    </div>
                         <div class="form-group col-4">
                      <label for="frist_name">Area</label>
               
                    </div>
                    <div class="form-group col-6">
                      <label for="bhks">BHKs</label>
                      <select class="form-control">
                      	<option>Select Option </option>
                      	<option>1</option>
                      	<option>2</option>
                      	<option>3</option>
                      	<option>4</option>
                      </select>
                    </div>
                    <div class="form-group col-6">
                      <label for="property-area">Property Area</label>
                      <input id="property-area" type="number" class="form-control" name="first_name"
                       autofocus required>
                    </div>
                  </div>
                  <div class="form-group">
                    <button id="submit-btn"  type="Submit" class="btn btn-primary btn-lg btn-block">
                      Search
                    </button>
                    <button id="submit-btn"  type="Submit" class="btn btn-success btn-lg btn-block">
                      Add
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <script type="text/javascript" src="citiesByState.js"></script>
  <script type="text/javascript">
  function makeSubmenu(value) {
      if(value.length==0) document.getElementById("citySelect").innerHTML = "<option></option>";
      else {
      var citiesOptions = "";
      for(cityId in citiesByState[value]) {
      citiesOptions+="<option>"+citiesByState[value][cityId]+"</option>";
      }
      document.getElementById("citySelect").innerHTML = citiesOptions;
      }
      }
      function displaySelected() { var country = document.getElementById("stateSelect").value;
      var city = document.getElementById("citySelect").value;
      alert(country+"\n"+city);
      }
      function resetSelection() {
      document.getElementById("stateSelect").selectedIndex = 0;
      document.getElementById("citySelect").selectedIndex = 0;
      console.log(citiesByState.s);
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