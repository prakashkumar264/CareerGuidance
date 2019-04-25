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
                            
                            <div class="row">
                                <div class="col-md-6">
                                               <h5>Recommended Test</h5>
                               
                                            <asp:DropDownList runat="server" ID="ddluserspecificskill"   AllowSingleDeselect="true"  DataPlaceHolder="Recommend Skill Test" data-live-search="true" ></asp:DropDownList>
                                            <asp:Button ID="btn_subtwo" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Take Test" OnClick="btn_subtwo_Click"    />
                               
                                            <br /><br /><br />
                                             <h5>Other Test</h5>
                                             <asp:DropDownList runat="server" ID="ddlskill"   AllowSingleDeselect="true"  DataPlaceHolder="Other Test" data-live-search="true" ></asp:DropDownList>

                                             <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Take Test" OnClick="btn_submit_Click"    />       
                                                </div>
                                <div class="col-md-6">

                                    <h5> Instructions for the tests:</h5>
                                    <p>1. Test Consist of 10 Questions based on skill you have selected</p>
                                    <p>2. Total time for test is 15 minutes</p>
                                    <p>3. After 15minutes test will be automatically submitted</p>
                                    <p>4. There is not negative marking</p>
                                </div>
                            </div>
                 
                           
                             <br /><br /><br />
                            
                            


                        </div>
                        <div class="body table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Date & Time</th>
                                        <th>Result</th>
										<th>View</th>
                                    </tr>
                                </thead>
                                <tbody runat="server" ID="aptilist">
                                  <%--  <tr>
                                        <th scope="row">1</th>
                                        <td><b>C</b></td>
                                        <td>25/1/2019 <br /> 19.05.20</td>
                                        <td> <b> 6 | 10</b></td>
										<td><a type="button" class="btn bg-blue waves-effect" style="width:inherit" href="aptitudeview.aspx">
											View
										</a></td>
                                    </tr>--%>
                                  
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
