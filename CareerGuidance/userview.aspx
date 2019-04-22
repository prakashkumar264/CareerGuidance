<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="userview.aspx.cs" Inherits="CareerGuidance.userview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <section class="content">
        <div class="container-fluid">
            <div class="row clearfix">
                        
                <div class="col-md-2">
                    <asp:Button runat="server"  ID="goback"  Text="Go Back" class="btn bg-blue waves-effect" OnClick="goback_Click"/>
                    </div>
              
                <%--Main Information--%>
                <div class="col-md-8">
                    <div class="card">
                        <br />

                        <h2 style="padding-left:15px;" id="Name" runat="server">
                            
                        </h2>
                        <div class="body">
                            <div>
                                <ul class="nav nav-tabs" role="tablist" >
                                    <li role="presentation" class="active"><a href="#profile_settings" aria-controls="settings" role="tab" data-toggle="tab">Profile </a></li>
									<li role="presentation"><a href="#education" aria-controls="settings" role="tab" data-toggle="tab">Education</a></li>
                                    

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
                                                        <asp:Label ID="emailid" runat="server" ></asp:Label>
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
                                                       <asp:Label ID="phone" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="location" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="jobrole" runat="server" ></asp:Label>
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
                                                          <asp:Label ID="experience" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="skills" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="Passion" runat="server" ></asp:Label>
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
                                                        <asp:Label ID="interest" runat="server" ></asp:Label>
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
                                                    <asp:Image ID="profilepic2"  runat="server" style="min-width:200px; min-height: 200px;max-width: 250px;max-height: 250px;" />
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
                                                     <asp:HyperLink ID="linkCV" ClientIDMode="Static" Target="_blank" runat="server">Download</asp:HyperLink>
                                                </div>
                                               </div>
                                            </div>


                                         
                                       
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
                                                          <asp:Label ID="tenthmarks" runat="server" ></asp:Label>
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
                                                            <asp:Label ID="twelthmarks" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="UGmarks" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="Gmarks" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="UGStream" runat="server" ></asp:Label>
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
                                                             <asp:Label ID="GStream" runat="server" ></asp:Label>
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
                                                           <asp:Label ID="Profession" runat="server" ></asp:Label>
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
                                                            <asp:Label ID="OtherEducation" runat="server" ></asp:Label>
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
                                                           <asp:Label ID="HighSchool" runat="server" ></asp:Label>
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
                                                         <asp:Label ID="UGSchool" runat="server" ></asp:Label>
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
                                                        <asp:Label ID="GSchool" runat="server" ></asp:Label>
                                                    </div>
                                                </div>
                                                    </div>
                                           </div>


                                         

                                      
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
