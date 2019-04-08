<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CareerGuidance.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

      <section class="content">
        <div class="container-fluid">
            <div class="row clearfix">


                <%--SideBar--%>
                <div class="col-xs-12 col-sm-3">
                    <div class="card profile-card">
                        <div class="profile-header">&nbsp;</div>
                        <div class="profile-body">
                            <div class="image-area">
                                <img src="images/user-lg.jpg" alt="AdminBSB - Profile Image" />
                            </div>
                            <div class="content-area">
                                <h3><%:Session["usrname"]%></h3>
                                <p style="text-align:center;"><%:Session["JobRole"]%></p>
                               
                            </div>
                        </div>
                       
                    </div>

                    <div class="card card-about-me">
                        <div class="header">
                            <h2>ABOUT ME</h2>
                        </div>
                        <div class="body">
                            <ul>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">library_books</i>
                                        Education
                                    </div>
                                    <div class="content">
                                        <%:Session["Education"]%>
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">location_on</i>
                                        Location
                                    </div>
                                    <div class="content">
                                        <%:Session["Location"]%>
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">edit</i>
                                        Skills
                                    </div>
                                    <div class="content">
                                        <%:Session["Skill"]%>
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">notes</i>
                                        Interest 
                                    </div>
                                    <div class="content">
                                        <%:Session["Interest"]%>
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">notes</i>
                                        Passion 
                                    </div>
                                    <div class="content">
                                        <%:Session["Passion"]%>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                
                <%--Main Information--%>
                <div class="col-xs-12 col-sm-9">
                    <div class="card">
                        <div class="body">
                            <div>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#profile_settings" aria-controls="settings" role="tab" data-toggle="tab">Profile Settings</a></li>
									<li role="presentation"><a href="#education" aria-controls="settings" role="tab" data-toggle="tab">Education</a></li>
                                    <li role="presentation"><a href="#change_password_settings" aria-controls="settings" role="tab" data-toggle="tab">Change Password</a></li>

                                </ul>

                                <div class="tab-content">

                                    
                                    <%--Basic Profile Data--%>
                                    <div role="tabpanel" class="tab-pane fade in active" id="profile_settings">
                                      
                                            
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                           <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtLocation" class="form-control" placeholder="Location" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                              
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtJobRole" class="form-control" placeholder="Job Role" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtExperience" class="form-control" placeholder="Experience" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtSkills" class="form-control" placeholder="Skills" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
											<div class="form-group">                                               
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtPassion" class="form-control" placeholder="Passion" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
											<div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtInterest" class="form-control" placeholder="Interest" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>


                                            <asp:Button ID="btn_Update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update"  OnClick="btn_profile_update" />
                                       
                                    </div>


                                    <%--Education Details--%>
									<div role="tabpanel" class="tab-pane fade in" id="education">
                                        
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtTenth" class="form-control" placeholder="10th Std. Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txttwelth" class="form-control" placeholder="12th Std. Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtUGMarks" class="form-control" placeholder="UnderGradaute Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                              
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtGMarks" class="form-control" placeholder="Graduate Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtUGStream" class="form-control" placeholder="Undergraduate Stream" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">                                                
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtGSTream" class="form-control" placeholder="Graduate Stream" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
											<div class="form-group">                                               
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtProfession" class="form-control" placeholder="Profession" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
											<div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtOtherEducation" class="form-control" placeholder="Other Education" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                           <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtHighSchool" class="form-control" placeholder="High School" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                           <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtUGSchool" class="form-control" placeholder="UG School" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                          <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtGSchool" class="form-control" placeholder="Graduate College" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                           </div>


                                            <asp:Button ID="btn_education_update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update" OnClick="Btn_education_update"  />

                                      
                                    </div>

                                    <%--Reset Password--%>
                                    <div role="tabpanel" class="tab-pane fade in" id="change_password_settings">
                                       <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtoldpassword" class="form-control" placeholder="Old Password" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                                    </div>
                                                </div>
                                       </div>
                                        <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtNewPass" class="form-control" placeholder="New Password" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                                    </div>
                                                </div>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Password must contain 8 characters, 1 digit and 1 special character"  ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>                                                                           
                  
                                       </div>
                                        <div class="form-group">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtNewREPass" class="form-control" placeholder="Renter New Password" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                                    </div>
                                                </div>
                                       </div>

                                         <asp:Button ID="btn_password" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Change Password" OnClick="Btn_password_update"  />

                                    </div>
                                

								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
