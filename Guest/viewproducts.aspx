<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="viewproducts.aspx.cs" Inherits="Guest_viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




     <asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1" RepeatColumns="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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
                     <a href='purchase.aspx?id=<%# Eval("shopid") %>&amp;catid=<%# Eval("categoryid") %>&amp;fid=<%# Eval("foodid") %> '>Addtocart</a>
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
    </asp:SqlDataSource>
    


    <%--<asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' />
            <br />
            <h4><asp:Label ID="foodnameLabel" runat="server" style="color: #990033" Text='<%# Eval("foodname") %>' /></h4> 
            <br />
           <%-- categoryid:
            <asp:Label ID="categoryidLabel" runat="server" Text='<%# Eval("categoryid") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
           --%> 
          <%-- <div class="w3agile_description">
             description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
<br />


        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([shopid] = @shopid) AND ([categoryid] = @categoryid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
            <asp:QueryStringParameter Name="categoryid" QueryStringField="catid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
</asp:Content>

