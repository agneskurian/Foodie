<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="nearestshop.aspx.cs" Inherits="Guest_nearestshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="shopid">
        <ItemTemplate>
            shopname:
            <asp:Label ID="shopnameLabel" runat="server" Text='<%# Eval("shopname") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            shopid:
            <asp:Label ID="shopidLabel" runat="server" Text='<%# Eval("shopid") %>' />
            <br />
           <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [shopname], [city], [shopid] FROM [dbshopregister] WHERE (([shopid] = @shopid) AND ([city] = @city))">
        <SelectParameters>
            <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
            <asp:Parameter DefaultValue="city" Name="city" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

  <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="shopid">
        <Columns>
            <asp:BoundField DataField="shopid" HeaderText="shopid" ReadOnly="True" SortExpression="shopid" />
            <asp:BoundField DataField="shopname" HeaderText="shopname" SortExpression="shopname" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [shopid], [shopname], [city], [mobile] FROM [dbshopregister] WHERE (([city] = @city) AND ([shopid] = @shopid))">
        <SelectParameters>
            <asp:Parameter DefaultValue="city" Name="city" Type="String" />
            <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>--%>
</asp:Content>

