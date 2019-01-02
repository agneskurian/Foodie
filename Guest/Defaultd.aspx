<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="Defaultd.aspx.cs" Inherits="Guest_Defaultd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    		<div class="w3l_banner_nav_right">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
    
            foodname:
            <asp:Label ID="foodnameLabel" runat="server" Text='<%# Eval("foodname") %>' />
            <br />
            categoryid:
            <asp:Label ID="categoryidLabel" runat="server" Text='<%# Eval("categoryid") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            <h4>price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></h4>
            <br />
            <br />
		</ItemTemplate>
        </asp:DataList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([categoryid] = @categoryid) AND ([shopid] = @shopid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="categoryid" QueryStringField="catid" Type="Int32" />
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</div>
</asp:Content>

