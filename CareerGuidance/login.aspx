<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CareerGuidance.login" %>




<!doctype html>
<html class="no-js" lang="en" style="position: relative; min-height: 100%;">
    <head>
        <title>Login | Upgrowth</title>
        <meta name="description" content="H-Code - A premium portfolio template from ThemeZaa">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <!-- favicon -->
        <link rel="shortcut icon" href="images/favicon.png">
        <link rel="apple-touch-icon" href="images/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
        <!-- animation --> 
       
        <!-- bootstrap --> 
        <link rel="stylesheet" href="css2/bootstrap.css" />
        <!-- et line icon --> 
        <link rel="stylesheet" href="css2/et-line-icons.css" />
        <!-- font-awesome icon -->
        <link rel="stylesheet" href="css2/font-awesome.min.css" />
        <!-- revolution slider -->
    
        <!-- text animation -->
        <link rel="stylesheet" href="css2/text-effect.css" />
        <!-- common -->
        <link rel="stylesheet" href="css2/style.css" />
        <!-- responsive -->
        <link rel="stylesheet" href="css2/responsive.css" />
        <!--[if IE]>
            <link rel="stylesheet" href="css/style-ie.css" />
        <![endif]-->
        <!--[if IE]>
            <script src="js/html5shiv.js"></script>
        <![endif]-->
    </head>
    <body style="margin: 0 0 0px; height:auto;">
        <!-- navigation panel -->
        <nav class="navbar navbar-default navbar-fixed-top nav-transparent overlay-nav sticky-nav nav-border-bottom bg-white" role="navigation">
            <div class="container">
                <div class="row">
                    <!-- logo -->
                     <!-- logo -->
                    <div class="col-md-2 pull-left"><a class="logo-light" href="home.aspx"><img alt="" src="images2/logo-light.png" class="logo" /></a><a class="logo-dark" href="#"><img alt="" src="images2/logo-light.png" class="logo" /></a></div>
                    <div class="navbar-header col-sm-8 col-xs-2 pull-right">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    </div>
                    <!-- end search and cart  -->
                    <!-- toggle navigation -->
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
                                    <a href="ContactUs.aspx" >Contact Us <i class="fa fa-angle-down"></i></a>
                                </li>

                                <li class="dropdown panel">
                                    <a href="login.aspx">Login<i class="fa fa-angle-down"></i></a>
                                </li>
							
                                <li class="dropdown panel">
                                    <a href="Register.aspx" >Register <i class="fa fa-angle-down"></i></a>
                                </li>
							
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <!--end navigation panel --> 

        <!-- head section -->
        <section class="content-top-margin page-title page-title-small border-bottom-light border-top-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-12" >

                    </div>
                    <div class="col-md-4 col-sm-12 wow fadeInUp" data-wow-duration="300ms">
                        <h1 style="text-align:center;" class="black-text">Login</h1>
                    </div>
                    <div class="col-md-4 col-sm-12" data-wow-duration="600ms">

                    </div>
                </div>
             </div>
            
        </section>
        <!-- end head section -->

        <!-- content section -->
        <section class="bg-gray wow fadeIn">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8 col-xs-11 center-col xs-no-padding">
                       <form id="form1" runat="server">
                            <div class="form-group no-margin-bottom">
                                <!-- label  -->
                               
                                <!-- end label  -->
                                <!-- input  -->
                                <asp:TextBox style="text-transform:none;" ID="txtEmail" class="input-round big-input" placeholder="Email Address" runat="server" required="required"></asp:TextBox>
                                <!-- end input  -->
                            </div>
                              
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter corect email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                
								
                            <div class="form-group no-margin-bottom">
                                <!-- label  -->
                                
                                <!-- end label  -->
                                <!-- input  -->
                                 <asp:TextBox style="text-transform:none;" ID="txtPassword" TextMode="Password" class="input-round big-input" placeholder="Password" runat="server" required="required"></asp:TextBox>
                                <!-- end input  -->
                            </div>
                            <asp:Button ID="btn_login" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Login" OnClick="btn_login_Click"  />
                           
                        </form>
<br /><br /><br /><br /><br /><br /><br />
                    </div>
                </div>
            </div>
        </section>
        <!-- end content section -->

        <!-- footer -->
        <footer style=" position: absolute;
    left: 0;
    bottom: 0;
    height: 93px;
    width: 100%;">
          
             <div class="container-fluid bg-dark-gray footer-bottom">
                <div class="container">
                    <div class="row margin-three">
                        <!-- copyright -->
                        <div class="col-md-6 col-sm-6 col-xs-12 copyright text-left letter-spacing-1 xs-text-center xs-margin-bottom-one">
                            &copy; 2015 H-Code is proudly powered by ThemeZaa.
                        </div>
                        <!-- end copyright -->
                        <!-- logo -->
                        <div class="col-md-6 col-sm-6 col-xs-12 footer-logo text-right xs-text-center">
                            <a href="index.html"><img src="images/logo-light-gray.png" alt=""/></a>
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
    
    </body>
</html>
