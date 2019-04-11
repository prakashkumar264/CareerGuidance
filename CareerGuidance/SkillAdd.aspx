<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SkillAdd.aspx.cs" Inherits="CareerGuidance.SkillAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


     <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>SKILLS</h2>
            </div>

            
            
           <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Add new Skills
                                <br />
								
                            </h2>
                           
                        </div>
						<br />
						<div class= "row">
						   <div class="col-md-4">
						   
						   </div>
						   <div class="col-md-4" style="text-align:center;">
						  <%-- <select class="form-control show-tick">
								<option value="">-- Select Your Skill --</option>
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>
						   </select>--%>

                         <asp:DropDownList runat="server" ID="ddlskill"   AllowSingleDeselect="true"  DataPlaceHolder="Select Your Skill" data-live-search="true" ></asp:DropDownList>
                            <br /><br /><br />

                         <asp:DropDownList runat="server" ID="ddlrating"   AllowSingleDeselect="true"  DataPlaceHolder="Rate Your Skill" ></asp:DropDownList>
                           
						   <br />
						   <br />
						    <a type="button" class="btn bg-red waves-effect" style="width:inherit" href="Skills.aspx" >
							   <i class="material-icons">add_box</i><span>Cancel</span>
							</a>

                            <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Update"  OnClick="btn_update"  />
							<br />
							
							<br />
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
