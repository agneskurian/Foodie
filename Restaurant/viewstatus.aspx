<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewstatus.aspx.cs" Inherits="Restaurant_viewstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Profileid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [Profileid], [shopid], [Status] FROM [dbaddprofile] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

