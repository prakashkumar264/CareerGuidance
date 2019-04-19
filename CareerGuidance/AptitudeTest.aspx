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
                       
                        <center>
                            <div>
                                <asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
                                <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick"></asp:Timer>
                            </div>

                            <div>
                            <asp:UpdatePanel id="updPnl" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                        <asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="#6600CC"></asp:Label>
                                </ContentTemplate>
                                <Triggers>
                                         <asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
                                </Triggers>
                            </asp:UpdatePanel>
                            </div>
                         </center>

						<div class="body" >
						      <div class="row" style="padding-left:20px;">
							
									  <div >
											<h4><b>1. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesone" /></h4>
											<asp:RadioButtonList ID="QSONE" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="quesoptone" Value="quesoptone"  />
                                                <asp:ListItem  Text="quesopttwo" Value="quesopttwo" />
                                                <asp:ListItem  Text="quesoptthree" Value="quesoptthree"/>
                                                <asp:ListItem  Text="quesoptfour" Value="quesoptfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      
                                      <div >
											<h4><b>2. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questwo" /></h4>
											<asp:RadioButtonList ID="QSTWO" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="questwoone" Value="questwoone"/>
                                                <asp:ListItem  Text="questwotwo" Value="questwotwo" />
                                                <asp:ListItem  Text="questwothree" Value="questwothree"/>
                                                <asp:ListItem  Text="questwofour" Value="questwofour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      

                                     <div >
											<h4><b>3. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questhree" /></h4>
											<asp:RadioButtonList ID="QSTHREE" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="questhreeone" Value="questhreeone"/>
                                                <asp:ListItem  Text="questhreetwo" Value="questhreetwo" />
                                                <asp:ListItem  Text="questhreethree" Value="questhreethree"/>
                                                <asp:ListItem  Text="questhreefour" Value="questhreefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                  
                                     <div >
											<h4><b>4. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesfour" /></h4>
											<asp:RadioButtonList ID="QSFOUR" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="quesfourone" Value="quesfourone"/>
                                                <asp:ListItem  Text="quesfourtwo" Value="quesfourtwo" />
                                                <asp:ListItem  Text="quesfourthree" Value="quesfourthree"/>
                                                <asp:ListItem  Text="quesfourfour" Value="quesfourfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<h4><b>5. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesfive" /></h4>
											<asp:RadioButtonList ID="QSFIVE" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="quesfiveone" Value="quesfiveone"/>
                                                <asp:ListItem  Text="quesfivetwo" Value="quesfivetwo" />
                                                <asp:ListItem  Text="quesfivethree" Value="quesfivethree"/>
                                                <asp:ListItem  Text="quesfivefour" Value="quesfivefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<h4><b>6. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quessix" /></h4>
											<asp:RadioButtonList ID="QSSIX" runat="server" Font-Bold="true" >
                                                <asp:ListItem  Text="quessixone" Value="quessixone"/>
                                                <asp:ListItem  Text="quessixtwo" Value="quessixtwo" />
                                                <asp:ListItem  Text="quessixthree" Value="quessixthree"/>
                                                <asp:ListItem  Text="quessixfour" Value="quessixfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                      <div >
											<h4><b>7. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesseven" /></h4>
											<asp:RadioButtonList ID="QSSEVEN" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="quessevenone" Value="quessevenone"/>
                                                <asp:ListItem  Text="quesseventwo" Value="quesseventwo" />
                                                <asp:ListItem  Text="quesseventhree" Value="quesseventhree"/>
                                                <asp:ListItem  Text="quessevenfour" Value="quessevenfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />
                                      
                                     <div >
											<h4><b>8. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="queseight" /></h4>
											<asp:RadioButtonList ID="QSEIGHT" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="queseightone" Value="queseightone"/>
                                                <asp:ListItem  Text="queseighttwo" Value="queseightwo" />
                                                <asp:ListItem  Text="queseightthree" Value="queseightthree"/>
                                                <asp:ListItem  Text="queseightfour" Value="queseightfour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                  

                                      <div >
											<h4><b>9. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="quesnine" /></h4>
											<asp:RadioButtonList ID="QSNINE" runat="server" Font-Bold="true">
                                                <asp:ListItem  Text="quesnineone" Value="quesnineone"/>
                                                <asp:ListItem  Text="quesninetwo" Value="quesninetwo" />
                                                <asp:ListItem  Text="quesninethree" Value="quesninethree"/>
                                                <asp:ListItem  Text="quesninefour" Value="quesninefour" />
											</asp:RadioButtonList>
									  </div>
                                      <br />

                                     <div >
											<h4><b>10. </b> &nbsp; &nbsp; <asp:Label runat="server" ID="questen" /></h4>
											<asp:RadioButtonList ID="QSTEN" runat="server" Font-Bold="true">
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
