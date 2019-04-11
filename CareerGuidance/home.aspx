<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CareerGuidance.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UpGrowth</title>
        <meta name="description" content="H-Code - A premium portfolio template from ThemeZaa">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="ThemeZaa">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
        <!-- favicon -->
        <link rel="shortcut icon" href="images2/favicon.png">
        <link rel="apple-touch-icon" href="images2/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images2/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images2/apple-touch-icon-114x114.png">
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
        <nav class="navbar navbar-default navbar-fixed-top nav-transparent overlay-nav sticky-nav nav-border-bottom" role="navigation">
            <div class="container">
                <div class="row">
                    <!-- logo -->
                    <div class="col-md-2 pull-left"><a class="logo-light" href="home.aspx"><img alt="" src="images2/logo-light.png" class="logo" /></a><a class="logo-dark" href="#"><img alt="" src="images2/logo-light.png" class="logo" /></a></div>
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

        <section id="myCarousel" class="carousel slide carousel-slide">
            <ol class="carousel-indicators xs-indicators-black">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="item active full-screen">
                    <div class="fill" style="background-image:url('http://placehold.it/1920x1080');"></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                            <div class="col-md-3 col-sm-5 col-xs-6 text-left animated fadeInUp no-padding">
                                                <h1>Innovation Through </h1>
                                                <div class="separator-line bg-yellow no-margin-lr"></div>
                                                <span>We consult on digital strategy & craft meaningful connections with your customers across web.</span>
                                                <a class="highlight-button btn inner-link no-margin-lr no-margin-bottom" href="#portfolio">Digital Marketing</a>
                                            </div>
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
                    <div class="fill" style="background-image:url('http://placehold.it/1920x1080');"></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                            <div class="col-md-3 col-sm-5 col-xs-6 text-left animated fadeInUp no-padding">
                                                <h1>Digital Trend Challenges</h1>
                                                <div class="separator-line bg-yellow no-margin-lr"></div>
                                                <span>We believe in design, strategy and the ability of technology to transform organizations and lives.</span>
                                                <a class="highlight-button btn inner-link no-margin-lr no-margin-bottom" href="#portfolio">Digital Marketing</a>
                                            </div>
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
                    <div class="fill" style="background-image:url('http://placehold.it/1920x1080');"></div>
                    <div class="opacity-full bg-white display-none xs-display-block"></div>
                    <div class="container">
                        <div class="row">
                            <div class="container full-screen position-relative">
                                <div class="slider-typography">
                                    <div class="slider-text-middle-main">
                                        <div class="slider-text-middle slider-text-middle6 padding-left-right-px wow fadeInUp slider-text">
                                            <div class="col-md-3 col-sm-5 col-xs-6 text-left animated fadeInUp no-padding">
                                                <h1>Innovative Businesses</h1>
                                                <div class="separator-line bg-yellow no-margin-lr"></div>
                                                <span>We create premium designs, technology, ecommerce, mobile & digital campaigns.</span>
                                                <a class="highlight-button btn inner-link no-margin-lr no-margin-bottom" href="#blog">Go Emotions!</a>
                                            </div>
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
                                <h5>Elegant / Unique design</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section no-margin col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-target medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>True Responsiveness</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-trophy medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Parallax Slider</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-scissors medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Lightbox photo Gallery</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-hotairballoon medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Different Layout Type</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                        <!-- features item -->
                        <div class="features-section col-md-12 col-sm-6 no-padding wow fadeInUp">
                            <div class="col-md-3 col-sm-2 col-xs-2 no-padding"><i class="icon-tools medium-icon"></i></div>
                            <div class="col-md-9 col-sm-9 col-xs-9 no-padding text-left f-right">
                                <h5>Skills and Accordians</h5>
                                <div class="separator-line bg-yellow"></div>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text.</p>
                            </div>
                        </div>
                        <!-- end features item -->
                    </div>
                </div>
            </div>
        </section>
        <!-- end features section -->
        <!-- counter section -->
        <section id="counter" class="fix-background" style="background-image:url('http://placehold.it/1920x1100');">
            <div class="opacity-full bg-dark-gray"></div>
            <div class="container position-relative">
                <div class="row">
                    <!-- counter item -->
                    <div class="col-md-3 col-sm-6 bottom-margin text-center counter-section wow fadeInUp sm-margin-bottom-ten" data-wow-duration="300ms">
                        <i class="icon-heart medium-icon"></i>
                        <span id="anim-number-pizza" class="counter-number white-text main-font font-weight-600"></span>
                        <span class="counter-title light-gray-text">Pizzas Ordered</span>
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
        <!-- portfolio section -->
        <section id="portfolio" class="grid-wrap work-4col margin-top-section no-margin-top no-padding-bottom wow fadeIn">
            <div class="container-fluid">
                <div class="row no-padding">
                    <!-- section title -->
                    <div class="col-md-12 text-center">
                        <h3 class="section-title no-padding-bottom">Latest Work</h3>
                    </div>
                    <!-- end section title -->
                    <div class="col-md-3 col-sm-10 margin-three center-col text-center">
                        <h4 class="gray-text">We are technology leaders and have crafted intuitive and lasting online and mobile experiences for hundreds of associations and non-profits.</h4>
                    </div>
                   

                    <div class="grid-gallery overflow-hidden">
                        <div class="tab-content">
                            <ul class="masonry-items grid">
                                <!-- portfolio item -->
                                <li class="html jquery wordpress">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x600" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="single-project-page1.html">Herbal Beauty Salon</a></h3>
                                            <p>Branding &amp; Identity</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                                <!-- portfolio item -->
                                <li class="html magento wordpress">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x1200" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="single-project-page2.html">Tailoring Interior </a></h3>
                                            <p>Branding &amp; Identity</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                                <!-- portfolio item -->
                                <li class="jquery magento wordpress">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x600" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="#">Pixflow Studio</a></h3>
                                            <p>Web &amp; Branding</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                                <!-- portfolio item -->
                                <li class="wordpress magento jquery">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x1200" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="single-project-page4.html">Kaya Skin Care</a></h3>
                                            <p>UI Design &amp; Identity</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                                <!-- portfolio item -->
                                <li class="html jquery">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x600" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="single-project-page5.html">Third Eye Glasses</a></h3>
                                            <p>Logo &amp; Brochure</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                                <!-- portfolio item -->
                                <li class="html magento">
                                    <figure>
                                        <div class="gallery-img"><a href="#"><img src="http://placehold.it/800x600" alt=""></a></div>
                                        <figcaption>
                                            <h3><a href="standard-with-slider.html">Rubber Studio</a></h3>
                                            <p>Branding &amp; Identity</p>
                                        </figcaption>
                                    </figure>
                                </li>
                                <!-- end portfolio item -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end portfolio section -->
        
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
                            <li class="nav active"><a href="#tab6_sec1" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-picture"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Branding</span></li>
                            <li class="nav"><a href="#tab6_sec2" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-tools"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Design</span></li>
                            <li class="nav"><a href="#tab6_sec3" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-mobile"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Development</span></li>
                            <li class="nav"><a href="#tab6_sec4" data-toggle="tab" class="xs-min-height-inherit xs-no-padding"><span><i class="icon-camera"></i></span></a><br><span class="text-small text-uppercase letter-spacing-3 margin-five font-weight-600 xs-letter-spacing-none xs-display-none">Photography</span></li>
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
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('http://placehold.it/1000x600');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">01</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">Corinne Product</p>
                                    <span class="case-study-work letter-spacing-3">Brand Strategy  |  Graphic Design</span>
                                    <p class="width-90 xs-width-100">Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry.</p>
                                    <a href="#" class="highlight-button-black-border btn btn-small no-margin-bottom sm-no-margin">View Case Study</a>
                                </div>
                            </div>
                        </div>
                        <!-- end case study item -->
                        <!-- case study item -->
                        <div class="item">
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('http://placehold.it/1000x600');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">02</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">Rebrand Coffee</p>
                                    <span class="case-study-work letter-spacing-3">Web Design  |  Brand Strategy</span>
                                    <p class="width-90 xs-width-100">Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry.</p>
                                    <a href="#" class="highlight-button-black-border btn btn-small no-margin-bottom sm-no-margin">View Case Study</a>
                                </div>
                            </div>
                        </div>
                        <!-- end case study item -->
                        <!-- case study item -->
                        <div class="item">
                            <div class="col-lg-6 col-md-6 case-study-img cover-background" style="background-image:url('http://placehold.it/1000x600');"></div>
                            <div class="col-lg-6 col-md-6 case-study-details">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <span class="about-number black-text font-weight-400 letter-spacing-2 xs-no-border xs-no-padding-left xs-display-none">03</span>
                                </div>
                                <div class="col-lg-8 col-md-9 col-sm-9 col-xs-12 about-text position-relative xs-text-center">
                                    <p class="title-small text-uppercase letter-spacing-3 black-text font-weight-600 no-margin-bottom">William Stormdal</p>
                                    <span class="case-study-work letter-spacing-3">Brand Strategy  |  Graphic Design</span>
                                    <p class="width-90 xs-width-100">Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry. Lorem Ipsum has been the industry's standard dummy. Lorem Ipsum is simply dummy text of the printing &amp; typesetting industry.</p>
                                    <a href="#" class="highlight-button-black-border btn btn-small no-margin-bottom sm-no-margin">View Case Study</a>
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
        <section id="blog" class="wow fadeIn">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12 text-center">
                        <h3 class="section-title">Latest Blogs</h3>
                    </div>
                    <!-- end section title -->
                </div>
                <div class="row">
                    <!-- blog item -->
                    <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-duration="300ms">
                        <div class="blog-post">
                            <div class="blog-post-images"><a href="#"><img src="http://placehold.it/800x500" alt=""></a></div>
                            <div class="post-details">
                                <a href="blog-single-full-width-with-image-slider.html" class="post-title">Standard post with picture</a>
                                <span class="post-author sm-margin-bottom-three sm-margin-top-three">Posted by <a href="blog-single-full-width-with-image-slider.html">Michael Freemon</a> | 10 January 2015</span>
                                <p class="width-90">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end blog item -->
                    <!-- blog item -->
                    <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-duration="600ms">
                        <div class="blog-post">
                            <div class="blog-post-images"><a href="#"><img src="http://placehold.it/800x500" alt=""></a></div>
                            <div class="post-details">
                                <a href="blog-single-right-sidebar.html" class="post-title">Post with featured picture</a>
                                <span class="post-author sm-margin-bottom-three sm-margin-top-three">Posted by <a href="blog-single-right-sidebar.html">Colin Powell</a> | 02 January 2015</span>
                                <p class="width-90">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end blog item -->
                    <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-duration="900ms">
                        <div class="blog-post">
                            <div class="blog-post-images"><a href="#"><img src="http://placehold.it/800x500" alt=""></a></div>
                            <div class="post-details">
                                <a href="blog-single-full-width.html" class="post-title">Standard post with slider</a>
                                <span class="post-author sm-margin-bottom-three sm-margin-top-three">Posted by <a href="blog-single-full-width.html">Vince Lombardi</a> | 02 January 2015</span>
                                <p class="width-90">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end blog item -->
                
            </div>
        </section>
        <!-- end blog section -->
        
        
        <!-- footer -->
        <footer>
            
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
                            <a href="#"><img src="images2/logo-light-gray.png" alt=""></a>
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
        <script type="text/javascript" src="js2/wow.min.js"></script>
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


        </div>
    </form>
</body>
</html>
