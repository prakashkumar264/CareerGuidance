﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CareerGuidance.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

      <section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-3">
                    <div class="card profile-card">
                        <div class="profile-header">&nbsp;</div>
                        <div class="profile-body">
                            <div class="image-area">
                                <img src="images/user-lg.jpg" alt="AdminBSB - Profile Image" />
                            </div>
                            <div class="content-area">
                                <h3>Marc K. Hammond</h3>
                                <p>Web Software Developer</p>
                               
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
                                        B.S. in Computer Science from the University of Tennessee at Knoxville
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">location_on</i>
                                        Location
                                    </div>
                                    <div class="content">
                                        Malibu, California
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">edit</i>
                                        Skills
                                    </div>
                                    <div class="content">
                                        <span class="label bg-red">UI Design</span>
                                        <span class="label bg-teal">JavaScript</span>
                                        <span class="label bg-blue">PHP</span>
                                        <span class="label bg-amber">Node.js</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="title">
                                        <i class="material-icons">notes</i>
                                        Description
                                    </div>
                                    <div class="content">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-9">
                    <div class="card">
                        <div class="body">
                            <div>
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
                                    <li role="presentation"><a href="#profile_settings" aria-controls="settings" role="tab" data-toggle="tab">Profile Settings</a></li>
									<li role="presentation"><a href="#education" aria-controls="settings" role="tab" data-toggle="tab">Education</a></li>
                                    <li role="presentation"><a href="#change_password_settings" aria-controls="settings" role="tab" data-toggle="tab">Change Password</a></li>

                                </ul>

                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                                        <div class="panel panel-default panel-post">
                                            <div class="panel-heading">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a href="#">
                                                            <img src="../../images/user-lg.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading">
                                                            <a href="#">Marc K. Hammond</a>
                                                        </h4>
                                                        Shared publicly - 26 Oct 2018
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <div class="post">
                                                    <div class="post-heading">
                                                        <p>I am a very simple wall post. I am good at containing <a href="#">#small</a> bits of <a href="#">#information</a>. I require little more information to use effectively.</p>
                                                    </div>
                                                    <div class="post-content">
                                                        <img src="../../images/profile-post-image.jpg" class="img-responsive" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-footer">
                                                <ul>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">thumb_up</i>
                                                            <span>12 Likes</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">comment</i>
                                                            <span>5 Comments</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">share</i>
                                                            <span>Share</span>
                                                        </a>
                                                    </li>
                                                </ul>

                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" placeholder="Type a comment" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default panel-post">
                                            <div class="panel-heading">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a href="#">
                                                            <img src="../../images/user-lg.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading">
                                                            <a href="#">Marc K. Hammond</a>
                                                        </h4>
                                                        Shared publicly - 01 Oct 2018
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <div class="post">
                                                    <div class="post-heading">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                                    </div>
                                                    <div class="post-content">
                                                        <iframe width="100%" height="360" src="https://www.youtube.com/embed/10r9ozshGVE" frameborder="0" allowfullscreen=""></iframe>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-footer">
                                                <ul>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">thumb_up</i>
                                                            <span>125 Likes</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">comment</i>
                                                            <span>8 Comments</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <i class="material-icons">share</i>
                                                            <span>Share</span>
                                                        </a>
                                                    </li>
                                                </ul>

                                                <div class="form-group">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" placeholder="Type a comment" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade in" id="profile_settings">
                                      
                                            
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


                                            <asp:Button ID="btn_Update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update"  />
                                       
                                    </div>

									<div role="tabpanel" class="tab-pane fade in" id="education">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="NameSurname" class="col-sm-2 control-label">High School Name</label>
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="NameSurname" name="NameSurname" placeholder="Name Surname" value="Marc K. Hammond" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="Email" class="col-sm-2 control-label">Marks Obtained in High School</label>
                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="Email" name="Email" placeholder="Email" value="example@example.com" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="InputExperience" class="col-sm-2 control-label">UnderGraduate College</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                         <input type="text" class="form-control" id="Email" name="Email" placeholder="Email" value="example@example.com" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="InputSkills" class="col-sm-2 control-label">Stream in Undergraduate</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="InputSkills" name="InputSkills" placeholder="Skills">
                                                    </div>
                                                </div>
                                            </div>

											<div class="form-group">
                                                <label for="InputSkills" class="col-sm-2 control-label">Percentage/C.G.P.A. Obtained in Undergraduate College</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="InputPassion" name="InputPassion" placeholder="Passion">
                                                    </div>
                                                </div>
                                            </div>
											 <div class="form-group">
                                                <label for="InputExperience" class="col-sm-2 control-label">Graduate College</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                         <input type="text" class="form-control" id="Email" name="Email" placeholder="Email" value="example@example.com" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="InputSkills" class="col-sm-2 control-label">Stream in Graduation</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="InputSkills" name="InputSkills" placeholder="Skills">
                                                    </div>
                                                </div>
                                            </div>

											<div class="form-group">
                                                <label for="InputSkills" class="col-sm-2 control-label">Percentage/C.G.P.A. Obtained in Graduate College</label>

                                                <div class="col-sm-10">
                                                    <div class="form-line">
                                                        <input type="text" class="form-control" id="InputPassion" name="InputPassion" placeholder="Passion">
                                                    </div>
                                                </div>
                                            </div>


                                          
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-danger">SUBMIT</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade in" id="change_password_settings">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="OldPassword" class="col-sm-3 control-label">Old Password</label>
                                                <div class="col-sm-9">
                                                    <div class="form-line">
                                                        <input type="password" class="form-control" id="OldPassword" name="OldPassword" placeholder="Old Password" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="NewPassword" class="col-sm-3 control-label">New Password</label>
                                                <div class="col-sm-9">
                                                    <div class="form-line">
                                                        <input type="password" class="form-control" id="NewPassword" name="NewPassword" placeholder="New Password" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="NewPasswordConfirm" class="col-sm-3 control-label">New Password (Confirm)</label>
                                                <div class="col-sm-9">
                                                    <div class="form-line">
                                                        <input type="password" class="form-control" id="NewPasswordConfirm" name="NewPasswordConfirm" placeholder="New Password (Confirm)" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-danger">SUBMIT</button>
                                                </div>
                                            </div>
                                        </form>
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
