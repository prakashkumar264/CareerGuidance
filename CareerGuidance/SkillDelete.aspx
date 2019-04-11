<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SkillDelete.aspx.cs" Inherits="CareerGuidance.SkillDelete" %>
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
                                Delete Skills
                                <br />
								
                            </h2>
                           
                        </div>
						
						<br />
						
						<div class= "row" style="text-align:center;">
								<p style="text-align:center;"> Do you want to delete <asp:Label ID="lblskillname" runat="server"></asp:Label> skill ?</p>
						   <br />
						   <br />
						    <a type="button" href="Skills.aspx" class="btn bg-red waves-effect" style="width:inherit" >
									 <i class="material-icons">add_box</i><span>No</span>
							</a> &nbsp; &nbsp;
						   
                         <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Yes" OnClick="btn_submit_Click"  />
					
							<br />
							
							<br />
						  
						</div>
                </div>
            </div>
        </div>


		
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
