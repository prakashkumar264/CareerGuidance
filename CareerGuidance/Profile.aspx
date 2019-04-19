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
                                <asp:Image ID="profilepic" ClientIDMode="Static" runat="server"  style="min-width: 200px; min-height: 200px;max-width: 200px;max-height: 200px;"/>
                                <%--<img src="images/user-lg.jpg" alt="AdminBSB - Profile Image" />--%>
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
                                      
                                            
                                            <div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                <div class="col-md-1">
                                                    <h5>Email id:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                               </div>

                                            </div>
                                             <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Phone Number:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtPhone" class="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Location:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtLocation" class="form-control" placeholder="Location" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                              
                                                 <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Job Role:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtJobRole" class="form-control" placeholder="Job Role" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                 </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                                
                                                 <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Experience:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtExperience" class="form-control" placeholder="Experience" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                 </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Skills:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtSkills" class="form-control" placeholder="Skills" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
											<div class="form-group" style="margin-bottom:0px;">                                               
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Passion:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtPassion" class="form-control" placeholder="Passion" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
											<div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Interest:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtInterest" class="form-control" placeholder="Interest" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                               </div>
                                            </div>

                                        <%-- profile pic--%>
                                           <div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Profile Photo:</h5>
                                                </div>
                                                <div class="col-md-8">
                                              
                                                    <asp:FileUpload ID="FUprofilepic" ClientIDMode="Static" runat="server" />
                                                    <p>File must be .jpg/.jpeg and less than 5MB</p>
                                                    <asp:RegularExpressionValidator ID="regexValidator" runat="server"
                                                         ControlToValidate="FUprofilepic"
                                                         ErrorMessage="Only JPEG images are allowed" 
                                                         ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)">
                                                    </asp:RegularExpressionValidator>
                                                    <asp:Label ID="lblprofilepic" runat="server" Text="Current Profile pic: " />
                                                    <asp:Image ID="profilepic2"  runat="server" style="min-width: 200px; min-height: 200px;max-width: 250px;max-height: 250px;" />
                                                </div>
                                               </div>
                                            </div>

                                        <%--CV upload--%>
                                        <div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>CV / REsume:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                  
                                                     <asp:FileUpload ID="FUCV" ClientIDMode="Static" runat="server" />
                                                    <p>File must be .pdf and less than 5MB</p>
                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                         ControlToValidate="FUCV"
                                                         ErrorMessage="Only PDF are allowed" 
                                                         ValidationExpression="(.*\.([Pp][Dd][Ff])$)">
                                                    </asp:RegularExpressionValidator>
                                                     <asp:Label ID="lblCV" runat="server" Text="Current CV/Resume: "></asp:Label>
                                                     <asp:HyperLink ID="linkCV" ClientIDMode="Static" Target="_blank" runat="server">Download</asp:HyperLink>
                                                </div>
                                               </div>
                                            </div>


                                            <asp:Button ID="btn_Update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update"  OnClick="btn_profile_update" />
                                       
                                    </div>


                                    <%--Education Details--%>
									<div role="tabpanel" class="tab-pane fade in" id="education">
                                        
                                            <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>10th Marks:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtTenth" class="form-control" placeholder="10th Std. Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                             <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>12th Marks:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txttwelth" class="form-control" placeholder="12th Std. Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Undergraduate Marks:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtUGMarks" class="form-control" placeholder="UnderGradaute Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                              
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Graduate Marks:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                       <asp:TextBox ID="txtGMarks" class="form-control" placeholder="Graduate Marks" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Undergraduate Stream:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtUGStream" class="form-control" placeholder="Undergraduate Stream" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                            <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Graduate Stream:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtGSTream" class="form-control" placeholder="Graduate Stream" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
											<div class="form-group" style="margin-bottom:0px;">                                               
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Profession:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtProfession" class="form-control" placeholder="Profession" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
											<div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Other Education:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtOtherEducation" class="form-control" placeholder="Other Education" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                           <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>High School:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtHighSchool" class="form-control" placeholder="High School" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                           <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Undergraduate School:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtUGSchool" class="form-control" placeholder="UG School" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                            </div>
                                          <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-2">
                                                    <h5>Graduate School:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtGSchool" class="form-control" placeholder="Graduate College" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                    </div>
                                           </div>


                                            <asp:Button ID="btn_education_update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update" OnClick="Btn_education_update"  />

                                      
                                    </div>
                                    
                                    <%--Reset Password--%>
                                    <div role="tabpanel" class="tab-pane fade in" id="change_password_settings">
                                       <div class="form-group" style="margin-bottom:0px;">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtoldpassword" class="form-control" placeholder="Old Password" runat="server" TextMode="Password" ></asp:TextBox>
                                                         
                                                    </div>
                                                </div>
                                          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtoldpassword" ErrorMessage="Please enter Old Password"></asp:RequiredFieldValidator>--%>
                                       </div>
                                        <div class="form-group" style="margin-bottom:0px;">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtNewPass" class="form-control" placeholder="New Password" runat="server" TextMode="Password" ></asp:TextBox>
                                                    </div>
                                                </div>
                                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Please enter New Password"></asp:RequiredFieldValidator>--%>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Password must contain 8 characters, 1 digit and 1 special character"  ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>                                                                           
                  
                                       </div>
                                        <div class="form-group" style="margin-bottom:0px;">
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtNewREPass" class="form-control" placeholder="Renter New Password" runat="server" TextMode="Password" ></asp:TextBox>
                                                    </div>
                                                </div>
                                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewREPass" ErrorMessage="Please enter New Password"></asp:RequiredFieldValidator>--%>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNewREPass" ErrorMessage="Password must contain 8 characters, 1 digit and 1 special character"  ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>                                                                           
                  
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
