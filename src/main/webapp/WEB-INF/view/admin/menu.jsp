<link rel="stylesheet" href="./<%=request.getContextPath()%>/adminResources/css/font-awesome.min.css">
<link rel="stylesheet" href="./<%=request.getContextPath()%>/adminResources/font-awesome/css/font-awesome.min.css">
<div class="main-sidebar sidebar-style-2">
	<aside id="sidebar-wrapper">
		<div class="sidebar-brand">
			<a href="index">
			<!--   <img alt="image" src="<%=request.getContextPath()%>/adminResources/image/logo.png" class="header-logo" /> --> 
			<span class="logo-name" >House Mart</span>
			</a>
		</div>
		<ul class="sidebar-menu">
			
			<li class="dropdown"><a href="index"
				class="nav-link"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
			</li>
			
			<li class="dropdown"><a href="viewUsers"
				class="nav-link"><i class="fa fa-users" aria-hidden="true"></i><span>Manage Users</span></a>
			</li>
	
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
					<i class="fa fa-cube" aria-hidden="true"></i>
					<span>Manage Categories</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addCategory">Add Category</a></li>
					<li><a class="nav-link" href="viewCategory">View Category</a></li>
				</ul></li>
			
			
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-cubes" aria-hidden="true"></i>
				<span>Manage Subcategories</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addSubCategory">Add Subcategories</a></li>
					<li><a class="nav-link" href="viewSubCategory">View Subcategories</a></li>
				</ul></li>
			
			
			
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-map" aria-hidden="true"></i>
				<span>Manage State </span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addState">Add State</a></li>
					<li><a class="nav-link" href="viewState">View State</a></li>
				</ul></li>
				
				<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-map-marker" aria-hidden="true"></i>
				<span>Manage City </span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addCity">Add City</a></li>
					<li><a class="nav-link" href="viewCity">View City</a></li>
				</ul></li>
				
				<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-map-pin" aria-hidden="true"></i>
				<span>Manage Area </span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addArea">Add Area</a></li>
					<li><a class="nav-link" href="viewArea">View Area</a></li>
				</ul></li>
				
				<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-gavel" aria-hidden="true"></i>
				<span>Construction Status </span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addConstructionStatus">Add Construction Status</a></li>
					<li><a class="nav-link" href="viewConstructionStatus">View Construction Status</a></li>
				</ul></li>
			
			
			<li class="dropdown"><a href="#"
				class="menu-toggle nav-link has-dropdown">
				<i class="fa fa-university" aria-hidden="true"></i>
				<span>Manage Property</span></a>
				<ul class="dropdown-menu">
					<li><a class="nav-link" href="addProperty">Add Property</a></li>
					<li><a class="nav-link" href="viewProperty">View Property</a></li>
				</ul></li>	
				
				<li class="dropdown"><a href="viewComplain"
				class="nav-link"><i class="fa fa-comments" aria-hidden="true"></i>
				
								<span>Manage Complain</span></a>
			</li>  
			<li class="dropdown"><a href="viewFeedback"
				class="nav-link"><i class="fa fa-thumbs-up" aria-hidden="true"></i><span>Manage Feedback</span></a>
			</li>  			
			<li class="dropdown"><a href="/logout"
				class="nav-link"><i class="fas fa-sign-out-alt"></i><span>Logout</span></a>
			</li>
		</ul>
	
	</aside>
</div>
