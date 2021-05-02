
<!-- Main header start -->
<header class="main-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand logos" href="index.html">
                <img src="<%=request.getContextPath()%>/userResources/image/logo.png" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav header-ml">
                    <li class="nav-item">
                        <a class="nav-link" href="index">
                            Index
                        </a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="loadBuy">
                            Buy
                        </a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="loadSell">
                            Sell
                        </a>
                     </li>
                     <!-- <li class="nav-item">
                        <a class="nav-link" href="index">
                            Sell
                        </a>
                     </li> -->
                     
                     <li class="nav-item">
                        <a class="nav-link" href="loadDetection">
                            Predition
                        </a>
                     </li>
                     
                     <li class="nav-item">
                        <a class="nav-link" href="homeLoan">
                            Home Loan
                        </a>
                     </li>
                     
                    <li class="nav-item">
                        <a class="nav-link" href="complain">
                            Get Help
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="complain">Complain</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="complain">Complain</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedback">
                            Feedback
                        </a>
                        <!-- <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="feedback">Feedback</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="feedback">Feedback</a></li>
                                </ul>
                            </li>
                        </ul> -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">
                            Logout
                        </a>
                     </li>
                </ul>
                <!-- <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="submit-property.html" class="nav-link link-btn">Submit Property</a>
                    </li>
                </ul> -->
            </div>
        </nav>
    </div>
</header>