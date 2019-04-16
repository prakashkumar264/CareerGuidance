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
                        <div class="header">
                            <h1 style="font-weight:100;"> <asp:Label ID="skilhead" runat="server" /> Test Results</h1>
							<hr style="width:300px; margin-left:0;" />
							<h2 >Date & Time : <asp:Label ID="dattime" runat="server" /></h2>
							<hr style="width:300px; margin-left:0;" />
							<h2>Total Score : <asp:Label runat="server" ID="counter" /> / 10</h2>
                            
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
                                                            <th>Options</th>
															<th>Your Response</th>
															<th>Corect Response</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th scope="row">1</th>
															<td><asp:Label runat="server" ID="Q1" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q1a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q1b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q1c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q1d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q1ans" /></td>
															<td><asp:Label runat="server" ID="Q1crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">2</th>
															<td><asp:Label runat="server" ID="Q2" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q2a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q2b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q2c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q2d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q2ans" /></td>
															<td><asp:Label runat="server" ID="Q2crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">3</th>
															<td><asp:Label runat="server" ID="Q3" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q3a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q3b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q3c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q3d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q3ans" /></td>
															<td><asp:Label runat="server" ID="Q3crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">4</th>
															<td><asp:Label runat="server" ID="Q4" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q4a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q4b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q4c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q4d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q4ans" /></td>
															<td><asp:Label runat="server" ID="Q4crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">5</th>
															<td><asp:Label runat="server" ID="Q5" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q5a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q5b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q5c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q5d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q5ans" /></td>
															<td><asp:Label runat="server" ID="Q5crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">6</th>
															<td><asp:Label runat="server" ID="Q6" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q6a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q6b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q6c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q6d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q6ans" /></td>
															<td><asp:Label runat="server" ID="Q6crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">7</th>
															<td><asp:Label runat="server" ID="Q7" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q7a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q7b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q7c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q7d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q7ans" /></td>
															<td><asp:Label runat="server" ID="Q7crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">8</th>
															<td><asp:Label runat="server" ID="Q8" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q8a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q8b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q8c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q8d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q8ans" /></td>
															<td><asp:Label runat="server" ID="Q8crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">9</th>
															<td><asp:Label runat="server" ID="Q9" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q9a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q9b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q9c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q9d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q9ans" /></td>
															<td><asp:Label runat="server" ID="Q9crt" /></td>
														</tr>
                                                        <tr>
															<th scope="row">10.</th>
															<td><asp:Label runat="server" ID="Q10" /></td>
                                                            <td>
                                                                <p>a. <asp:Label runat="server" ID="Q10a" /></p>
                                                                <p>b. <asp:Label runat="server" ID="Q10b" /></p>
                                                                <p>c. <asp:Label runat="server" ID="Q10c" /></p>
                                                                <p>d. <asp:Label runat="server" ID="Q10d" /></p>
                                                            </td>
															<td><asp:Label runat="server" ID="Q10ans" /></td>
															<td><asp:Label runat="server" ID="Q10crt" /></td>
														</tr>

														
														
													</tbody>
												</table>
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
