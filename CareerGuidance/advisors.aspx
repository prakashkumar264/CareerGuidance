<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advisors.aspx.cs" Inherits="CareerGuidance.advisors" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Advisors | Upgrowth</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="css/themes/all-themes.css" rel="stylesheet" />

    
    <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
</head>

<body class="theme-red">
    <form runat="server">    <!-- Page Loader -->
          <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
  
    <div class="overlay"></div>

    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="index.aspx">UpGrowth</a>
            </div>
           
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                  
                    <li>
                        <a href="home.aspx">
                            <i class="material-icons">person</i>
                            <span>Home</span>
                        </a>
                    </li>
                    
					 <li>
                        <a href="Profile.aspx">
                            <i class="material-icons">person</i>
                            <span>Profile</span>
                        </a>
                    </li>
					<li>
                        <a href="Skills.aspx">
                            <i class="material-icons">school</i>
                            <span>Skills</span>
                        </a>
                    </li>
					<li>
                        <a href="aptitude.aspx">
                            <i class="material-icons">assignment</i>
                            <span>Aptitude</span>
                        </a>
                    </li>
                    <li>
                        <a href="getadvice.aspx">
                            <i class="material-icons">assignment</i>
                            <span>Get Advice</span>
                        </a>
                    </li>
					<li>
                        <a href="results.aspx">
                            <i class="material-icons">highlight</i>
                            <span>Results</span>
                        </a>
                    </li>
                    <li>
                        <a href="ContactUs.aspx">
                            <i class="material-icons">home</i>
                            <span>Contact Us</span>
                        </a>
                    </li>



                    
                    
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                    <asp:Button ID="btn_logout" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Logout" OnClick="btn_logout_Click"  />
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
       
    </section>


    <section class="content">
        <div class="container-fluid">
                      <div class="block-header">
                <h2>Get Advice</h2>
            </div>

            
            
           <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Search for Counselors, Industry Experts for Advice
                                <br />
                            </h2>
                           
                        </div>
						<br />
						<div class= "row">
                            <div class="col-md-1">

                            </div>
						    <div class="col-md-2">
                                <h5 style="text-align:right;">&nbsp; &nbsp; Choose Adviser Type</h5>
						    </div>
                            <div class="col-md-2">
                                 <asp:DropDownList runat="server" ID="ddltype"   AllowSingleDeselect="true"  data-live-search="true" ></asp:DropDownList>
						    </div>
                            <div class="col-md-2">
                                <h5 style="text-align:right;">Choose Location</h5>
						    </div>
						    <div class="col-md-2">
                                <asp:DropDownList runat="server" ID="ddllocation"   AllowSingleDeselect="true"  data-live-search="true" ></asp:DropDownList>
						    </div>
                            <div class="col-md-2" style="text-align:center;">
                                  <asp:Button ID="btn_search" class="btn btn-lg bg-green waves-effect" style="width:50%;"  runat="server" Text="Search" OnClick="btn_search_Click"   />
						    </div>
						</div>

                        <br />
                        <br />
                       
                        <h5> &nbsp; &nbsp; &nbsp; Search Results: </h5>
                       
                       
                        <br />

                        <div class="row clearfix">
                            <div class="col-md-3">
                   
                            </div>
                            <div class="col-md-6" ID="advicelistcard" runat="server">
                              
                                    

                            </div>
                            <div class="col-md-3">
                    
                            </div>
                      </div>
                </div>
            </div>
         </div>
	

           
        </div>
       </section>
        </form>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Bootstrap Notify Plugin Js -->
    <script src="plugins/bootstrap-notify/bootstrap-notify.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/ui/modals.js"></script>

    <!-- Demo Js -->
    <script src="js/demo.js"></script>


    <script>  
        $(document).ready(function () {
            $('.sendmail').click(function () {
                debugger;
                var id1 = this.id;
                var arr = id1.split(',');
                var message = $('#txtmessage').val();
                var subject = $('#txtsubject').val();
                var advisormail = arr[0];
                var username = arr[1];
                var usermail = arr[2];
                $.ajax({
             
                    async: false,
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    url: '<%=ResolveUrl("~/advisors.aspx/sendmail") %>',
                    data: "{'cmsg':'" + message + "','subject':'" + subject + "','advisormail':'" + advisormail + "','username':'" + username + "','usermail':'" + usermail + "'}",
            
                    success: function (response) {
                        alert("Mail Sent Succesffully");
                        location.href = "advisors.aspx";
                    },
                    error: function () {
                        alert("some problem in saving data");
                    }
                });
              
            });



        });

        </script>  

</body>

</html>
