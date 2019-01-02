<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="viewproducts.aspx.cs" Inherits="Guest_viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="foodid" DataSourceID="SqlDataSource1">
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
           <div class="w3agile_description">
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
    </asp:SqlDataSource>
</asp:Content>

