<%@ Page Title="" Language="C#" MasterPageFile="~/User/FoodieMaster.master" AutoEventWireup="true" CodeFile="Defaultd.aspx.cs" Inherits="User_Defaultd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     			<h3>We Offer</h3>
      


    <asp:DataList ID="DataList1" runat="server" DataKeyField="shopid" RepeatColumns="4"  DataSourceID="SqlDataSource2" HorizontalAlign="Center">
        <ItemTemplate>
           
    
    <div class="team">
<%--	<div class="container">--%>
			<div class="agileits_team_grids">
				<div class="col-md-3 agileits_team_grid">
                 <asp:Image ID="Image1" runat="server" Height="200px" href="viewproducts.aspx" ImageUrl='<%# Eval("image") %>' Width="200px" />

					<h4>  <asp:Label ID="categorynameLabel" runat="server" Text='<%# Eval("categoryname") %>' />
</h4>
					     <a href='viewproducts.aspx?id=<%# Eval("shopid") %>&amp;catid=<%# Eval("categoryid") %>'>ViewFoodItems</a>

				</div>
	<div class="clearfix"> </div>
			</div>
	<%--	</div>--%>
	</div>


            </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_category] WHERE ([shopid] = @shopid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([shopid] = @shopid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

     <%--<asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1" RepeatColumns="2">
                 <ItemTemplate>
                     		<div class="services">

    		<div class="w3ls_service_grids1">
				<div class="col-md-6 w3ls_service_grids1_left">
                  <asp:Image ID="Image1" runat="server" Height="210px" Width="150px" ImageUrl='<%# Eval("image") %>' />
                    <br />

				</div>
				<div class="col-md-6 w3ls_service_grids1_right">
					<ul>
						<li><h4><asp:Label ID="foodnameLabel" runat="server" style="color: #990033" Text='<%# Eval("foodname") %>' /></h4></li>
						<li><asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' /></li>
						<li> <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></li>
					</ul>
                    <br />
					<a href="purchase.aspx">Addtocart</a>
				</div>
				<div class="clearfix"> </div>
			</div>
                                 </div>
                             </ItemTemplate>

	    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([shopid] = @shopid) AND ([categoryid] = @categoryid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
            <asp:QueryStringParameter Name="categoryid" QueryStringField="catid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    
</asp:Content>

