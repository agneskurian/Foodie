<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Guest_purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="top-brands">

            		<div class="container">

            			<div class="agile_top_brands_grids">

						<div class="agile_top_brand_center_grid">
                
    <asp:DataList ID="DataList1" runat="server" ForeColor="#990000">
        <ItemTemplate>
           <asp:Image ID="Image1" runat="server" Height="320px" Width="280px" ImageUrl='<%# Eval("image") %>' />
            <br />

            <h3><asp:Label ID="foodnameLabel" runat="server" style="color: #990033"  Text='<%# Eval("foodname") %>' Font-Bold="True" /></h3>
            <br />
            <h4>Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></h4>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    
    <asp:Label ID="Label1" runat="server" Text="Quantity" style="color: #990033" ></asp:Label>
    <asp:TextBox ID="txtquan" runat="server" AutoPostBack="True" OnTextChanged="txtquan_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" style="color: #990033" Text="Totalcost"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="Addtocart" style="color: #990033" OnClick="Button1_Click1" />
    <br />
    <br />

</div>
            </div>
                            </div>                </div>
    </asp:Content>

