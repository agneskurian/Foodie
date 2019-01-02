<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="viewall.aspx.cs" Inherits="Guest_viewall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="shopid" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            categoryid:
            <asp:Label ID="categoryidLabel" runat="server" Text='<%# Eval("categoryid") %>' />
            <br />
            shopid:
            <asp:Label ID="shopidLabel" runat="server" Text='<%# Eval("shopid") %>' />
            <br />
            categoryname:
            <asp:Label ID="categorynameLabel" runat="server" Text='<%# Eval("categoryname") %>' />
<br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_category] WHERE ([shopid] = @shopid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>

