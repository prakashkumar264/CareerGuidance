<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="aptitudeview.aspx.cs" Inherits="CareerGuidance.aptitudeview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


     <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>APTITUDE Results</h2>
            </div>
			
			<br />
			<div class="card">
                        <div class="header bg-green">
                            <h2>
                                TITLE     <small>26/11/2019</small>
								<small> Results in Brief</small>
                            </h2>
                            
                        </div>
                        <div class="body">
                              <div class="row clearfix">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										
											
											<div class="body table-responsive">
												<table class="table table-bordered">
													<thead>
														<tr>
															<th>Sr.No</th>
															<th>Question</th>
															<th>Your Response</th>
															<th>Corect Response</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th scope="row">1</th>
															<td>Mark</td>
															<td>Otto</td>
															<td>@mdo</td>
														</tr>
														<tr>
															<th scope="row">2</th>
															<td>Jacob</td>
															<td>Thornton</td>
															<td>@fat</td>
														</tr>
														
													</tbody>
												</table>
											</div>
											
											
										
											 <p>Total Possible Score: </p> <p>100</p>
											  <p>Your  Score: </p> <p>50</p>
										
									</div>
								</div>
							  
                        </div>
           </div>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bottom" runat="server">
</asp:Content>
