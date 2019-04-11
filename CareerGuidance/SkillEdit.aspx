<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SkillEdit.aspx.cs" Inherits="CareerGuidance.SkillEdit" %>
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
                                Edit current Skills
                                <br />
								
                            </h2>
                           
                        </div>
						
						<br />
						
						<div class= "row">
						   <div class="col-md-4" style="text-align:center;">
						       
                               <asp:Label ID="lblskillname" runat="server"></asp:Label>
						   </div>
						   <div class="col-md-4" style="text-align:center;">
						      <asp:DropDownList runat="server" ID="ddlrating"   AllowSingleDeselect="true"  DataPlaceHolder="Re-Rate Your Skill" ></asp:DropDownList>

						   <br />
						   <br />
						   <a type="button" class="btn bg-red waves-effect" style="width:inherit" href="Skills.aspx" >
							   <i class="material-icons">add_box</i><span>Cancel</span>
							</a>

                            <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Update" OnClick="btn_submit_Click"  />
						   
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
