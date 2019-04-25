<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="advisordelete.aspx.cs" Inherits="CareerGuidance.advisordelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                     
                        
                        <div class= "row" style="text-align:center;">
								<p style="text-align:center;"> Do you want to delete <asp:Label ID="adminname" runat="server"></asp:Label> Advisor ?</p>
						   <br />
						   <br />
						    <a type="button" href="adminadvisors.aspx" class="btn bg-red waves-effect" style="width:inherit" >
									 <i class="material-icons">add_box</i><span>No</span>
							</a> &nbsp; &nbsp;
						   
                         <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Yes" OnClick="btn_submit_Click"   />
					
							<br />
							
							<br />
						  
						</div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Examples -->
            <!-- Exportable Table -->
         
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
