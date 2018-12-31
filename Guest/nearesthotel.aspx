<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="nearesthotel.aspx.cs" Inherits="Guest_nearesthotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="shopid">
        <ItemTemplate>
            shopname:
            <asp:Label ID="shopnameLabel" runat="server" Text='<%# Eval("shopname") %>' />
            <br />
            shopid:
            <asp:Label ID="shopidLabel" runat="server" Text='<%# Eval("shopid") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [shopname], [shopid], [city] FROM [dbshopregister] WHERE ([city] = @city)">
        <SelectParameters>
            <asp:Parameter DefaultValue="city" Name="city" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

