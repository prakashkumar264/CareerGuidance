<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="AptitudeTest.aspx.cs" Inherits="CareerGuidance.AptitudeTest" %>
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
                            <h2>New Test</h2>
                        </div>
						
						<div class="body" >
						      <div class="row">
							  <form>
									  <div>
											<p><b>1. &nbsp; &nbsp;</b>Whats your name?</p>
											<input name="group1" type="radio" id="radio_1" checked />
											<label for="radio_1">Radio - 1</label>
											<input name="group1" type="radio" id="radio_2" />
											<label for="radio_2">Radio - 2</label><input name="group1" type="radio" id="radio_1" checked />
											<label for="radio_1">Radio - 1</label>
											<input name="group1" type="radio" id="radio_2" />
											<label for="radio_2">Radio - 2</label>
									  </div>
									  
									     <button type="button" class="btn btn-danger m-t-15 waves-effect">Cancel Test</button>
										 &nbsp; &nbsp;
										 <button type="button" class="btn btn-primary m-t-15 waves-effect">Submit</button>
										 
									
							  
							  </form>
							      
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
