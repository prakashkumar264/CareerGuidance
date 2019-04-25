<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CareerGuidance.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UpGrowth</title>
   
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <!-- favicon -->
        <link rel="shortcut icon" href="images2/favicon.png" />
        <link rel="apple-touch-icon" href="images2/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="images2/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="images2/apple-touch-icon-114x114.png" />
        <link rel="stylesheet" href="css2/animate.css" />
        <link rel="stylesheet" href="css2/bootstrap.css" />
        <link rel="stylesheet" href="css2/et-line-icons.css" />
        <link rel="stylesheet" href="css2/font-awesome.min.css" />
        <link rel="stylesheet" href="css2/extralayers.css" />
        <link rel="stylesheet" href="css2/settings.css" />
        <link rel="stylesheet" href="css2/magnific-popup.css" />
        <link rel="stylesheet" href="css2/owl.carousel.css" />
        <link rel="stylesheet" href="css2/owl.transitions.css" />
        <link rel="stylesheet" href="css2/full-slider.css" />
        <link rel="stylesheet" href="css2/text-effect.css" />
        <link rel="stylesheet" href="css2/style.css" />
        <link rel="stylesheet" href="css2/responsive.css" />
       
</head>
<body>
    <form id="form1" runat="server">
        <div>



             <!-- navigation panel -->
        <nav   class="navbar navbar-default navbar-fixed-top  overlay-nav sticky-nav nav-border-bottom" role="navigation">
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
                                    <a href="ContactUs.aspx" >Contact Us <i class="fa fa-angle-down"></i></a>
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

        <section id="myCarousel" class="carousel slide carousel-slide">
            <ol class="carousel-indicators xs-indicators-black">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="item active full-screen">
                    <div class="fill" style="background-image:url('images2/slider2.jpg');"></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slider item -->
                <!-- slider item -->
                <div class="item full-screen">
                    <!-- Set the first background image using inline CSS below. -->
                    <div class="fill" style="background-image: url('images2/slider1.jpg') "></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slider item -->
                <!-- slider item -->
                <div class="item full-screen">
                    <!-- Set the first background image using inline CSS below. -->
                    <div class="fill" style="background-image:url('images2/slider3.jpg');"></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end slider item -->
            </div>
            <!-- slider controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <img src="images2/arrow-pre.png" alt="" /> </a> <a class="right carousel-control" href="#myCarousel" data-slide="next"> <img src="images2/arrow-next.png" alt="" /> </a>
            <!-- end slider controls -->
        </section>
        <!-- end slider -->
        <!-- about section -->
        
        <!-- end about section -->
        <!-- features section -->
        <section id="features" class="features wow fadeIn">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12 text-center">
                        <h3 class="section-title">Why Choose Us?</h3>
                    </div>
                    <!-- end section title -->
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-desktop medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Who We Are </h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Upgrowth  Career Guidance and Planning organisation working with a self-developed Psychometric tool, which is completely validated to Indian norms and is statistically proven.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section no-margin col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-target medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Career Encyclopedia  </h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Explore updated information on 20 careers ; career overview,job profile, opportunities, career roadmap, skill sets required..</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-trophy medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Career Assessment </h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Assess student’s aptitude, personality & interest , result in an giving top career recommendation.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-scissors medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Skill & Interest </h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>They have  enter  and rate their skills and enter the interest they have towards their Passion.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-hotairballoon medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Extensive Support  & Resources</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Excel in your chosen career or stream and plan ahead through comprehensive and well-researched resources on the world of careers,  regular notifications, career e-guides, and more.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-tools medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Value-Added Services</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>A successful career is not based on choice alone, as there are various efforts that go into creating the right profile to attract  recruiters</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                </div>
            </div>
        </section>
        <!-- end features section -->
        <!-- counter section -->
        <section id="counter" class="fix-background" style="background-image:url('images2/slider8.jpg');">
            <div class="opacity-full bg-dark-gray"></div>
            <div class="container position-relative">
                <div class="row">
                    <!-- counter item -->
                    <div class="col-md-3 col-sm-6 bottom-margin text-center counter-section wow fadeInUp sm-margin-bottom-ten" data-wow-duration="300ms">
                        <i class="icon-heart medium-icon"></i>
                        <span id="anim-number-pizza" class="counter-number white-text main-font font-weight-600"></span>
                        <span class="counter-title light-gray-text">Career Guidance</span>
                    </div>
                    <!-- end counter item -->
                    <!-- counter item -->
                    <div class="col-md-3 col-sm-6 bottom-margin text-center counter-section wow fadeInUp sm-margin-bottom-ten" data-wow-duration="600ms">
                        <i class="icon-happy medium-icon"></i>
                        <span id="anim-number-client" class="counter-number white-text main-font font-weight-600"></span>
                        <span class="counter-title light-gray-text">Happy Clients</span>
                    </div>
                    <!-- end counter item -->
                    <!-- counter item -->
                    <div class="col-md-3 col-sm-6 bottom-margin-small text-center counter-section wow fadeInUp xs-margin-bottom-ten" data-wow-duration="900ms">
                        <i class="icon-anchor medium-icon"></i>
                        <span id="anim-number-projects" class="counter-number white-text main-font font-weight-600"></span>
                        <span class="counter-title light-gray-text">Projects Completed</span>
                    </div>
                    <!-- end counter item -->
                    <!-- counter item -->
                    <div class="col-md-3 col-sm-6 text-center counter-section wow fadeInUp" data-wow-duration="1200ms">
                        <i class="icon-chat medium-icon"></i>
                        <span id="anim-number-comments" class="counter-number white-text main-font font-weight-600"></span>
                        <span class="counter-title light-gray-text">Comments Reserved</span>
                    </div>
                    <!-- end counter item -->
                </div>
            </div>
        </section>
        <!-- end counter section -->
  
        
        <!-- services section -->
        <section class="corporate-standards no-padding-bottom wow fadeIn">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12 text-center">
                        <h3 class="section-title no-padding-bottom">Our Services</h3>
                    </div>
                    <!-- end section title -->
                </div>
            </div>
            <div class="container-fluid margin-five no-margin-bottom no-padding">
                <div class="row no-margin">
                    <!-- tab -->
                    <div class="col-md-12 col-sm-12 center-col text-center no-padding" id="animated-tab">
                        <!-- tab navigation -->
                        <ul class="nav nav-tabs margin-five no-margin-top xs-margin-bottom-seven">
                            <li class="nav active"><a href="#tab6_sec1" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-picture"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Profile</span></li>
                            <li class="nav"><a href="#tab6_sec2" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-tools"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Aptitude Test</span></li>
                            <li class="nav"><a href="#tab6_sec3" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-mobile"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Jobs</span></li>
                            <li class="nav"><a href="#tab6_sec4" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-camera"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Career Guidance</span></li>
                        </ul>
                        <!-- end tab navigation -->
                        <!-- tab content section -->
                        
                        <!-- end tab content section -->
                    </div>
                    <!-- end tab -->
                </div>
            </div>
        </section>
        <!-- end services section -->
        
        <!-- case study section -->
        <section class="no-padding case-study bg-gray wow fadeIn">
            <div class="container-fluid">
                <div class="row">
                    <div id="owl-demo-small" class="owl-carousel owl-theme dark-pagination  dark-pagination-without-next-prev-arrow">
                        <!-- case study item -->
                        <div class="item">
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('images2/slider5.jpg');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">01</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">Career Guidance</p>
                                    <span class="case-study-work letter-spacing-3">Career Choice  |  Career Guidance</span>
                                    <p class="width-90 xs-width-100">It is very important to seek professional career guidance. Just at the stage when you have to take vital decisions,  &amp; you must go to a professional career counselor. They can show you the right career path. &amp; Alliance International is such an agency that renders professional career counseling.</p>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- end case study item -->
                        <!-- case study item -->
                        <div class="item">
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('images2/slider6.jpg');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">02</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">What Are Career Assessments?</p>
                                    <span class="case-study-work letter-spacing-3">Career Choice  |  Career Guidance</span>
                                    <p class="width-90 xs-width-100">The Upgrrowth Career Assessment is an online career test that evaluates you including Personality, Aptitude, to suggest you top career options &amp; A Career Assessment is a test designed to understand where your unique set of strengths &amp;, aptitudes and skills lie, in order to recommend the right careers for you.</p>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end case study item -->
                        <!-- case study item -->
                        <div class="item">
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('images2/slider7.jpg');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">03</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">Team</p>
                                    <span class="case-study-work letter-spacing-3">Career Choice  |  Career Guidance</span>
                                    <p class="width-90 xs-width-100">The power of any career-guidance platform lies in the team that drives it.  &amp; The team’s expertise and breadth of knowledge can complement and steer the strength of technology powering it &amp;Furthermore, a single person cannot be expected to master several fields, and thus when it comes to career .</p>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end case study item -->
                    </div>
                </div>
            </div>
        </section>
        <!-- case study section -->
        
        <!-- blog section -->
        
        <!-- end blog section -->
        
        
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
        <script type="text/javascript" src="js2/wow.min.js"></script>           
        <script type="text/javascript" src="js2/page-scroll.js"></script>            
        <script type="text/javascript" src="js2/jquery.easypiechart.js"></script>              
        <script type="text/javascript" src="js2/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="js2/jquery.isotope.min.js"></script>             
        <script type="text/javascript" src="js2/owl.carousel.min.js"></script>         
        <script type="text/javascript" src="js2/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="js2/popup-gallery.js"></script>            
        <script type="text/javascript" src="js2/text-effect.js"></script>    
        <script type="text/javascript" src="js2/jquery.tools.min.js"></script>
        <script type="text/javascript" src="js2/jquery.revolution.js"></script>                  
        <script type="text/javascript" src="js2/counter.js"></script>            
           
        <script type="text/javascript" src="js2/imagesloaded.pkgd.min.js"></script>
                
        <script type="text/javascript" src="js2/main.js"></script>


        </div>
    </form>
</body>
</html>
