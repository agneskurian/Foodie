<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Guest_purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:DataList ID="DataList1" runat="server"  >
        <ItemTemplate>
            foodname:
            <asp:Label ID="foodnameLabel" runat="server" Text='<%# Eval("foodname") %>' />
            <br />
            image:
           <asp:Image ID="Image1" runat="server" Height="210px" Width="150px" ImageUrl='<%# Eval("image") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="txtquan" runat="server" AutoPostBack="True" OnTextChanged="txtquan_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Totalcost"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="Totalcost" OnClick="Button1_Click1" />
    <br />


    </asp:Content>

