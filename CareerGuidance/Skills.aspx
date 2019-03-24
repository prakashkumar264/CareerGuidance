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
                                <tbody>
                                    <tr>
                                        
                                        <td style="text-align:center">Python</td>
                                        <td style="text-align:center">
										     
										</td>
                                        <td style="text-align:center">
											<a href="SkillEdit.aspx" type="button" class="btn bg-orange waves-effect" style="width:inherit">
												 <i class="material-icons">mode_edit</i><span>Edit</span>
											</a>
										</td>
									     <td style="text-align:center">
											<a href="SkillDelete.aspx" type="button" class="btn bg-red waves-effect" style="width:inherit">
												 <i class="material-icons">delete</i><span>Delete</span>
											</a>
										</td>
                                    </tr>
                                    <tr>
                                        
                                        <td style="text-align:center">C++</td>
                                        <td style="text-align:center">
										     
										</td>
                                         <td style="text-align:center">
											<a href="skills-edit.html" type="button" class="btn bg-orange waves-effect" style="width:inherit">
												 <i class="material-icons">mode_edit</i><span>Edit</span>
											</a>
										</td>
									     <td style="text-align:center">
											<a href="skills-delete.html" type="button" class="btn bg-red waves-effect" style="width:inherit">
												 <i class="material-icons">delete</i><span>Delete</span>
											</a>
										</td>
                                    </tr>
                                    <tr>
                                       
                                        <td style="text-align:center">Java</td>
                                        <td style="text-align:center">
										     
										</td>
                                         <td style="text-align:center">
											<a href="skills-edit.html" type="button" class="btn bg-orange waves-effect" style="width:inherit">
												 <i class="material-icons">mode_edit</i><span>Edit</span>
											</a>
										</td>
									     <td style="text-align:center">
											<a href="skills-delete.html" type="button" class="btn bg-red waves-effect" style="width:inherit">
												 <i class="material-icons">delete</i><span>Delete</span>
											</a>
										</td>
                                    </tr>
                                    
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
