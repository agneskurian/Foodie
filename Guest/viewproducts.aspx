<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="viewproducts.aspx.cs" Inherits="Guest_viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            foodid:
            <asp:Label ID="foodidLabel" runat="server" Text='<%# Eval("foodid") %>' />
            <br />
            shopid:
            <asp:Label ID="shopidLabel" runat="server" Text='<%# Eval("shopid") %>' />
            <br />
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
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([shopid] = @shopid) AND ([categoryid] = @categoryid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
            <asp:QueryStringParameter Name="categoryid" QueryStringField="catid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

