<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="CareerGuidance.results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

       <section class="content">
        <div class="container-fluid">
           
            
           <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Career Choices
                                <br />
								
                            </h2>
                           
                        </div>
						<br />
						<div class= "row">
						   <div class="col-md-2">
                               
                               





						   </div>
						   <div class="col-md-8" style="text-align:center;">
						        <p> Based on the Skills you have rated: </p>
                                <div id="paraskill" runat="server">
                                   <%-- <p > Python : 6</p>--%>
                                </div> 
                                <br />
                                <p>and results of Aptitude test for Skills: </p>
                                <div id="paraapti" runat="server">
                                   <%-- <p> python : 7 | 10</p>--%>
                                </div> 
                               <br />
                               <h3 style="text-align:left;"> Career Choices for you are:</h3>
                               <div id="career" runat="server">
                                   <%--<p> </p>--%>
                               </div>
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
