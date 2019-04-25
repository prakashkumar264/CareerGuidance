<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="adminadvisors.aspx.cs" Inherits="CareerGuidance.adminadvisors" %>



<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  

    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />
    <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/themes/all-themes.css" rel="stylesheet" />
    <title>Users | Upgrowth</title>


</head>
<body class="theme-red">
    <form id="form1" runat="server">

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
  
        </div>
    </div>
  
    <div class="overlay"></div>

    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="home.aspx">UpGrowth</a>
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
                        <a href="users.aspx">
                            <i class="material-icons">person</i>
                            <span>Users</span>
                        </a>
                    </li>
					<li>
                        <a href="adminadvisors.aspx">
                            <i class="material-icons">school</i>
                            <span>Advsiors</span>
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
                
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                               Advisors
                            </h2>
                           
                        </div>
                          <asp:Button ID="btn_advisor" class="btn btn-block btn-lg bg-blue waves-effect" runat="server" Text="Add Advisor" OnClick="btn_advisor_Click"  style="width:100px; margin-left: 50px; margin-top: 16px;" />

                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Location</th>
                                            <th>Type</th>
                                            <th>Experience</th>
                                            <th>About</th>
                                            <th>Profile Pic</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Location</th>
                                            <th>Type</th>
                                            <th>Experience</th>
                                            <th>About</th>
                                            <th>Profile Pic</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                    <tbody id="list" runat="server">
                         <%--               <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td><a href="#">Edit</a></td>
                                            <td><a href="#">Delete</a></td>
                                        </tr>--%>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Examples -->
            <!-- Exportable Table -->
         
        </div>
    </section>

    </form>

    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.js"></script>
    <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>
    <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    <script src="plugins/node-waves/waves.js"></script>
    <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="js/admin.js"></script>
    <script src="js/pages/tables/jquery-datatable.js"></script>
    <script src="js/demo.js"></script>


</body>
</html>
