﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CareerGuidance.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
        <title>Contact Us | Upgrowth</title>
      
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <!-- favicon -->
        <link rel="shortcut icon" href="images2/favicon.png" />
        <link rel="apple-touch-icon" href="images2/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="images2/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="images2/apple-touch-icon-114x114.png" />
        <!-- animation --> 
        <link rel="stylesheet" href="css2/animate.css" />
        <!-- bootstrap --> 
        <link rel="stylesheet" href="css2/bootstrap.css" />
        <!-- et line icon --> 
        <link rel="stylesheet" href="css2/et-line-icons.css" />
        <!-- font-awesome icon -->
        <link rel="stylesheet" href="css2/font-awesome.min.css" />
        <!-- revolution slider -->
        <link rel="stylesheet" href="css2/extralayers.css" />
        <link rel="stylesheet" href="css2/settings.css" />
        <!-- magnific popup -->
        <link rel="stylesheet" href="css2/magnific-popup.css" />
        <!-- owl carousel -->
        <link rel="stylesheet" href="css2/owl.carousel.css" />
        <link rel="stylesheet" href="css2/owl.transitions.css" />
        <link rel="stylesheet" href="css2/full-slider.css" />
        <!-- text animation -->
        <link rel="stylesheet" href="css2/text-effect.css" />
        <!-- common -->
        <link rel="stylesheet" href="css2/style.css" />
        <!-- responsive -->
        <link rel="stylesheet" href="css2/responsive.css" />
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-default navbar-fixed-top nav-transparent overlay-nav sticky-nav nav-border-bottom" role="navigation">
            <div class="container">
                <div class="row">
                    <!-- logo -->
                             <div class="col-md-2 pull-left"><a class="logo-light" href="home.aspx"><img style="max-width: 175px;
    height: 42px;" alt="" src="images2/logosmall.png" class="logo" /></a><a class="logo-dark" href="#"><img style="max-width: 175px;
    height: 42px;" alt="" src="images2/logosmall.png" class="logo" /></a></div>
                    <div class="navbar-header col-sm-8 col-xs-2 pull-right">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    </div>
                    <!-- toggle navigation end -->
                    <!-- main menu -->
                    <div class="col-md-8 accordion-menu text-right">
                        <div class="navbar-collapse collapse">
                            <ul id="accordion" class="nav navbar-nav navbar-right panel-group">
                         
                                <li class="dropdown panel">
                                    <a href="home.aspx" >Home <i class="fa fa-angle-down"></i></a>
                                </li>
                               
								 <li class="dropdown panel">
                                    <a href="AboutUs.aspx" >About Us <i class="fa fa-angle-down"></i></a>
                                </li>
								 <li class="dropdown panel">
                                    <a href="Contact.aspx" >Contact Us <i class="fa fa-angle-down"></i></a>
                                </li>

                                <li class="dropdown panel">
                                    <a href="login.aspx">Login<i class="fa fa-angle-down"></i></a>
                                </li>
							
                                <li class="dropdown panel">
                                    <a href="Register.aspx" >Register <i class="fa fa-angle-down"></i></a>
                                </li>
							  <li class="dropdown panel" id="dash" runat="server">
                                    
                                </li>
							
                            </ul>
                        </div>
                    </div>
                 
                </div>
            </div>
        </nav>
        <!--end navigation panel --> 

        <!-- head section -->
        <section class="content-top-margin page-title page-title-small border-top-light">
             <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-12" >

                    </div>
                    <div class="col-md-4 col-sm-12 wow fadeInUp" data-wow-duration="300ms">
                        <h1 style="text-align:center;" class="black-text">CONTACT US</h1>
                    </div>
                    <div class="col-md-4 col-sm-12" data-wow-duration="600ms">

                    </div>
                </div>
            </div>
        </section>
        <!-- end head section -->

        <!-- content section -->
        <section class="wow fadeIn no-padding">
            <div class="container-fuild">
                <div class="row no-margin">
                    <div id="canvas1" class="col-md-12 col-sm-12 no-padding contact-map map">
                        <iframe id="map_canvas1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.8463001775954!2d73.05287771490043!3d19.02649328711631!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c24393d763af%3A0x266652df8009380d!2sBharati+Vidyapeeth+College+of+Engineering%2C+Navi+Mumbai!5e0!3m2!1sen!2sin!4v1555415094163!5m2!1sen!2sin"></iframe>
                    </div>
                </div>
            </div>
        </section>


        <section id="contact-form" class="wow fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <p class="text-med text-uppercase letter-spacing-1 black-text font-weight-600">Contact Form</p>
                        <p class="text-med">We try to be as a reachable as possible.Please Fill the contact form for  </p>
                        <p class="text-med">To get in touch with us and follow our updates & news alert online .</p>
                    </div>
                    <div class="col-md-6 col-sm-6  col-md-offset-2">
                           
                       
                            <asp:TextBox ID="name" runat="server"  placeholder="Name" />
                            <asp:TextBox ID="email" runat="server"  placeholder="Email Address" />
                           <asp:TextBox ID="msg" runat="server" placeholder="Your Message" Rows="10" />
                           <asp:Button ID="submit" runat="server" class="highlight-button-dark btn btn-small button xs-margin-bottom-five" Text="Submit" OnClick="submit_Click" />
                    </div>
                </div>
            </div>
        </section>

        <!-- end content section -->

        <!-- footer -->
<footer>
            
            <div class="container-fluid bg-dark-gray footer-bottom">
                <div class="container">
                    <div class="row margin-three" style="margin-top:1.5% !important; margin-bottom: 1.5% !important">
                        <!-- copyright -->
                        <div style="padding-top:10px; color:white;" class="col-md-8 col-sm-8 col-xs-12 copyright text-left letter-spacing-1 xs-text-center xs-margin-bottom-one">
                            &copy; 2019 Upgrowth | <a style="color:white;" href="AboutUs.aspx" >About Us</a> | <a style="color:white;" href="ContactUs.aspx">Contact Us</a> | 
                                        <a style="color:white;" href="termsandconditions.aspx">Terms and Conditions</a> | <a style="color:white;" href="privacypolicy.aspx" >Privacy Policy</a>
                        </div>
                        <!-- end copyright -->
                        <!-- logo -->
                        <div class="col-md-4 col-sm-4 col-xs-12 footer-logo text-right xs-text-center">
                            <a href="#"><img style="height:44px; max-width:174px !important;" src="images2/logosmall.png" alt=""></a>
                        </div>
                        <!-- end logo -->
                    </div>
                </div>
            </div>
            <!-- scroll to top --> 
           
            <!-- scroll to top End... --> 
        </footer>
        <!-- end footer -->

        <!-- javascript libraries --> 
        <script type="text/javascript" src="js2/jquery.min.js"></script>
        <script type="text/javascript" src="js2/modernizr.js"></script>
        <script type="text/javascript" src="js2/bootstrap.js"></script> 
        <script type="text/javascript" src="js2/bootstrap-hover-dropdown.js"></script>
        <script type="text/javascript" src="js2/jquery.easing.1.3.js"></script> 
        <script type="text/javascript" src="js2/skrollr.min.js"></script>  
        <script type="text/javascript" src="js2/smooth-scroll.js"></script>
        <!-- animation -->
        <script type="text/javascript" src="js2/bootstrap/wow.min.js"></script>
        <!-- page scroll -->
        <script type="text/javascript" src="js2/page-scroll.js"></script>
        <!-- easy piechart-->
        <script type="text/javascript" src="js2/jquery.easypiechart.js"></script>
        <!-- parallax -->
        <script type="text/javascript" src="js2/jquery.parallax-1.1.3.js"></script>
        <!--portfolio with shorting tab --> 
        <script type="text/javascript" src="js2/jquery.isotope.min.js"></script> 
        <!-- owl slider  -->
        <script type="text/javascript" src="js2/owl.carousel.min.js"></script>
        <!-- magnific popup  -->
        <script type="text/javascript" src="js2/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="js2/popup-gallery.js"></script>
        <!-- text effect  -->
        <script type="text/javascript" src="js2/text-effect.js"></script>
        <!-- revolution slider  -->
        <script type="text/javascript" src="js2/jquery.tools.min.js"></script>
        <script type="text/javascript" src="js2/jquery.revolution.js"></script>
        <!-- counter  -->
        <script type="text/javascript" src="js2/counter.js"></script>
        <!-- fit videos  -->
        <script type="text/javascript" src="js2/jquery.fitvids.js"></script>
        <!-- imagesloaded  -->
        <script type="text/javascript" src="js2/imagesloaded.pkgd.min.js"></script>
        <!-- setting --> 
        <script type="text/javascript" src="js2/main.js"></script>
    </form>
</body>
</html>
