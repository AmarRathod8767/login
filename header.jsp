<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Job board HTML-5 Template </title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="manifest" href="site.webmanifest">

<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/price_rangs.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
   </head>

   <body>
   <%
    if(session.getAttribute("jobid")==null)
 {
     response.sendRedirect("login.jsp");
	 	
 }
 %>

    <!-- Preloader Start -->
    <div id="preloader-active">

<div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">

<div class="preloader-circle"></div>

<div class="preloader-img pere-text">

<img src="assets/img/logo/logo.png" alt="">

</div>
</div></div>
</div>
<!-- Preloader Start -->
<header>
        <!-- Header Start -->
       <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="header.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>  
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="job_listing.jsp">Find a Jobs </a></li>
                                            <li><a href="about.jsp">About</a></li>
                                            <li><a href="#">Page</a>
                                                <ul class="submenu">
                                                    <li><a href="blog.jsp">Blog</a></li>
                                                    <li><a href="single_blog.jsp">Blog Details</a></li>
                                                    <li><a href="elements.jsp">Elements</a></li>
                                                    <li><a href="job_details.jsp">job Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn d-none f-right d-lg-block">
                                    <a href="logout.jsp" class="btn head-btn1">logout</a>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
           </div>
       </div>
        <!-- Header End -->
    </header>
    </body>
    </html>