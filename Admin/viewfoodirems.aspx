<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewfoodirems.aspx.cs" Inherits="Admin_viewfoodirems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="374px">
        <Columns>
            <asp:BoundField DataField="categoryname" HeaderText="categoryname" SortExpression="categoryname" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_category.categoryname, tbl_category.shopid, tbl_add_fooditems.foodname, tbl_add_fooditems.image, tbl_add_fooditems.price FROM tbl_category INNER JOIN tbl_add_fooditems ON tbl_category.categoryid = tbl_add_fooditems.categoryid"></asp:SqlDataSource>
</asp:Content>

