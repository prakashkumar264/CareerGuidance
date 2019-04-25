<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="advisoredit.aspx.cs" Inherits="CareerGuidance.advisoredit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>Edit Advisor</h2>
            </div>

            
            
           <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        
						<br />
						<div class= "row" style="    margin-left: 50px;margin-right: 10px;">  

                                        <div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                <div class="col-md-1">
                                                    <h5>Name:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtname" class="form-control" placeholder="Name Surname" runat="server"></asp:TextBox>
                                                    </div>             
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter correct name"></asp:RequiredFieldValidator>
                                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter correct name"  ValidationExpression="^[a-zA-Z'@&#.\s]{1,50}$"></asp:RegularExpressionValidator>  
                       
                                                </div>
                                               </div>

                                            </div>
                            	<br />
                                          <div class="form-group" style="margin-bottom:0px;">
                                               <div class="row">
                                                <div class="col-md-1">
                                                    <h5>Email id:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                         <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                                    </div>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter corect email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>      
                          
                                                </div>
                                               </div>

                                            </div>
                            	<br />
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
                            	<br />
                                            <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Location:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:DropDownList ID="ddllocation"  class="form-control" runat="server"  />
                                                
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                            	<br />
                                        <div class="form-group" style="margin-bottom:0px;">
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>Type:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:DropDownList ID="ddltype"  class="form-control" runat="server"  />
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            	<br />
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
                            
                            	<br />
                                            <div class="form-group" style="margin-bottom:0px;">                                                
                                                <div class="row">
                                                     <div class="col-md-1">
                                                    <h5>About:</h5>
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="form-line">
                                                        <asp:TextBox ID="txtabout" class="form-control" placeholder="About" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
										<br />

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

                              <asp:Button ID="btn_Update" class="btn btn-block btn-lg bg-pink waves-effect" runat="server" Text="Update"  style="width:200px;" OnClick="btn_Update_Click" />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
