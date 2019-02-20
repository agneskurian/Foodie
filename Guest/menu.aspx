<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="Guest_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
             <ItemTemplate>
             <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' />
             </ItemTemplate>
            
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [image] FROM [dbaddmenu] WHERE ([shopid] = @shopid)">
             <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>      
    </asp:SqlDataSource>
</asp:Content>

