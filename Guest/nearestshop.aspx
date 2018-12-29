<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="nearestshop.aspx.cs" Inherits="Guest_nearestshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
		<div class="events">
			<h3>NEAREST HOTELS</h3>
			<div class="w3agile_event_grids">
				<%--<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-bullhorn" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>cu</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-bullseye" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>rerum hic tenetur a sapiente</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3agile_event_grids">
				<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-credit-card" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>earum rerum tenetur sapiente</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-eye" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>quibu aut officiis debitis</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3agile_event_grids">
				<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-cog" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>necessitatibus saepe eveniet</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 w3agile_event_grid">
					<div class="col-md-3 w3agile_event_grid_left">
						<i class="fa fa-trophy" aria-hidden="true"></i>
					</div>
					<div class="col-md-9 w3agile_event_grid_right">
						<h4>repudiandae sint et molestiae</h4>
						<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
							voluptatibus.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>--%>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                            
			<div class="events-bottom">
				<div class="col-md-6 events_bottom_left">
					<div class="col-md-4 events_bottom_left1">
						<div class="events_bottom_left1_grid">


                                	<h4>
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' /></h4>
                                    <p><asp:Label ID="shopidLabel" runat="server" Text='<%# Eval("shopid") %>' /></p>
                                    <br />
                                    </div>
					               </div>
                         			<div class="col-md-8 events_bottom_left2">	
                                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' class="img-responsive" />
                                    <br />
                                    <p><asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' /></p>
                                    <br />
                                    <p><asp:Label ID="shopnameLabel" runat="server" Text='<%# Eval("shopname") %>' /></p>
                                         </div>
                                    <br />
                                   <br />
                    </div>
                </div>
                                </ItemTemplate>
                            </asp:DataList>



                




							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_addprofile.shopid, tbl_addprofile.image, tbl_addprofile.Location, dbshopregister.shopname, tbl_addprofile.Date FROM tbl_addprofile INNER JOIN dbshopregister ON tbl_addprofile.shopid = dbshopregister.shopid WHERE [shopid] = @shopid "></asp:SqlDataSource>








							
						
				</asp:Content>

