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
						      <div class="row" style="padding-left:20px;">
							
									  <div >
											<p><b>1. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesone" /></p>
											<asp:RadioButtonList ID="QSONE" runat="server">
                                                <asp:ListItem  Text="quesoptone" Value="quesoptone"/>
                                                <asp:ListItem  Text="quesopttwo" Value="quesopttwo" />
                                                <asp:ListItem  Text="quesoptthree" Value="quesoptthree"/>
                                                <asp:ListItem  Text="quesoptfour" Value="quesoptfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      
                                      <div >
											<p><b>2. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questwo" /></p>
											<asp:RadioButtonList ID="QSTWO" runat="server">
                                                <asp:ListItem  Text="questwoone" Value="questwoone"/>
                                                <asp:ListItem  Text="questwotwo" Value="questwotwo" />
                                                <asp:ListItem  Text="questwothree" Value="questwothree"/>
                                                <asp:ListItem  Text="questwofour" Value="questwofour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      

                                     <div >
											<p><b>3. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questhree" /></p>
											<asp:RadioButtonList ID="QSTHREE" runat="server">
                                                <asp:ListItem  Text="questhreeone" Value="questhreeone"/>
                                                <asp:ListItem  Text="questhreetwo" Value="questhreetwo" />
                                                <asp:ListItem  Text="questhreethree" Value="questhreethree"/>
                                                <asp:ListItem  Text="questhreefour" Value="questhreefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                  
                                     <div >
											<p><b>4. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesfour" /></p>
											<asp:RadioButtonList ID="QSFOUR" runat="server">
                                                <asp:ListItem  Text="quesfourone" Value="quesfourone"/>
                                                <asp:ListItem  Text="quesfourtwo" Value="quesfourtwo" />
                                                <asp:ListItem  Text="quesfourthree" Value="quesfourthree"/>
                                                <asp:ListItem  Text="quesfourfour" Value="quesfourfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<p><b>5. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesfive" /></p>
											<asp:RadioButtonList ID="QSFIVE" runat="server">
                                                <asp:ListItem  Text="quesfiveone" Value="quesfiveone"/>
                                                <asp:ListItem  Text="quesfivetwo" Value="quesfivetwo" />
                                                <asp:ListItem  Text="quesfivethree" Value="quesfivethree"/>
                                                <asp:ListItem  Text="quesfivefour" Value="quesfivefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<p><b>6. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quessix" /></p>
											<asp:RadioButtonList ID="QSSIX" runat="server">
                                                <asp:ListItem  Text="quessixone" Value="quessixone"/>
                                                <asp:ListItem  Text="quessixtwo" Value="quessixtwo" />
                                                <asp:ListItem  Text="quessixthree" Value="quessixthree"/>
                                                <asp:ListItem  Text="quessixfour" Value="quessixfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<p><b>7. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesseven" /></p>
											<asp:RadioButtonList ID="QSSEVEN" runat="server">
                                                <asp:ListItem  Text="quessevenone" Value="quessevenone"/>
                                                <asp:ListItem  Text="quesseventwo" Value="quesseventwo" />
                                                <asp:ListItem  Text="quesseventhree" Value="quesseventhree"/>
                                                <asp:ListItem  Text="quessevenfour" Value="quessevenfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      
                                     <div >
											<p><b>8. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="queseight" /></p>
											<asp:RadioButtonList ID="QSEIGHT" runat="server">
                                                <asp:ListItem  Text="queseightone" Value="queseightone"/>
                                                <asp:ListItem  Text="queseighttwo" Value="queseightwo" />
                                                <asp:ListItem  Text="queseightthree" Value="queseightthree"/>
                                                <asp:ListItem  Text="queseightfour" Value="queseightfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                  

                                      <div >
											<p><b>9. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesnine" /></p>
											<asp:RadioButtonList ID="QSNINE" runat="server">
                                                <asp:ListItem  Text="quesnineone" Value="quesnineone"/>
                                                <asp:ListItem  Text="quesninetwo" Value="quesninetwo" />
                                                <asp:ListItem  Text="quesninethree" Value="quesninethree"/>
                                                <asp:ListItem  Text="quesninefour" Value="quesninefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                     <div >
											<p><b>10. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questen" /></p>
											<asp:RadioButtonList ID="QSTEN" runat="server">
                                                <asp:ListItem  Text="questenone" Value="questenone"/>
                                                <asp:ListItem  Text="questentwo" Value="questentwo" />
                                                <asp:ListItem  Text="questenthree" Value="questenthree"/>
                                                <asp:ListItem  Text="questenfour" Value="questenfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />


									  
									<asp:Button ID="btn_cancel" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Cancel Test"    />
                                  
                                    <asp:Button ID="btn_submit" class="btn btn-lg bg-green waves-effect" style="width:inherit"  runat="server" Text="Submit" OnClick="btn_submit_Click"    />
										 
							      
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
