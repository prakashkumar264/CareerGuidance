<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="CareerGuidance.Skills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                Skills
                                <br />
								<a type="button" class="btn bg-green waves-effect" style="width:inherit" href="SkillAdd.aspx">
									 <i class="material-icons">add_box</i><span>Add New</span>
								</a>
                            </h2>
                           
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                       
                                        <th style="text-align:center">Skill Name</th>
										<th style="text-align:center">Rating</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody runat="server" id="userskillaction">
                                    
                               <%--     <tr >
                                        <td style="text-align:center">Python</td>
                                        <td style="text-align:center">5</td>
                                        <td style="text-align:center">
                                              <asp:Button ID="btn_edit" class="btn btn-lg bg-orange waves-effect"  style="width:inherit" runat="server" Text="Edit" />
										</td>
									     <td style="text-align:center">
                                              <asp:Button ID="btn_delete" class="btn btn-lg bg-red waves-effect"  style="width:inherit" runat="server" Text="Delete"  />
										</td>

                                    </tr>
                                 --%>
                                    
                                </tbody>
                            </table>
                        </div>

                            
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
