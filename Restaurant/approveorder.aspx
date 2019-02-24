<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="approveorder.aspx.cs" Inherits="Restaurant_approveorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="foodid,cartid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="foodid" HeaderText="foodid" ReadOnly="True" SortExpression="foodid" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
            <asp:BoundField DataField="cartid" HeaderText="cartid" ReadOnly="True" SortExpression="cartid" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="totalcost" HeaderText="totalcost" SortExpression="totalcost" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_add_fooditems.foodid, tbl_add_fooditems.shopid, tbl_add_fooditems.foodname, tbl_order.cartid, tbl_order.email, tbl_order.quantity, tbl_order.totalcost FROM tbl_add_fooditems INNER JOIN tbl_order ON tbl_add_fooditems.foodid = tbl_order.foodid WHERE([status] = @status)"">
                <SelectParameters>
       
     <asp:QueryStringParameter Name="foodid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

