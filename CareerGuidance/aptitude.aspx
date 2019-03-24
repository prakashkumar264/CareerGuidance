<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="aptitude.aspx.cs" Inherits="CareerGuidance.aptitude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

 <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>APTITUDE</h2>
            </div>

			  <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <a type="button" class="btn bg-green waves-effect" style="width:inherit" href="AptitudeTest.aspx">
									 <i class="material-icons">add_box</i><span>Take New Test</span>
							</a>
                           
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Result</th>
										<th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
										<td><a type="button" class="btn bg-blue waves-effect" style="width:inherit" href="aptitudeview.aspx">
											 <i class="material-icons">add_box</i><span>View</span>
										</a></td>
                                    </tr>
									
									 <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
										<td><a type="button" class="btn bg-blue waves-effect" style="width:inherit" href="aptitudeview.aspx">
											 <i class="material-icons">add_box</i><span>View</span>
										</a></td>
                                    </tr>
									
									 <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
										<td><a type="button" class="btn bg-blue waves-effect" style="width:inherit" href="aptitudeview.aspx">
											 <i class="material-icons">add_box</i><span>View</span>
										</a></td>
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
