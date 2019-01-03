<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="viewcategory.aspx.cs" Inherits="Guest_viewcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="logo_products">
            <div class="container">
			
                
    <asp:DataList ID="DataList1" runat="server" DataKeyField="shopid" RepeatColumns="3" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
        <ItemTemplate>
           
            <br />
            <table class="nav-justified">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200px" href="viewproducts.aspx" ImageUrl='<%# Eval("image") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="categorynameLabel" runat="server" Text='<%# Eval("categoryname") %>' />
                    </td>
                </tr>
                <tr>
                    <td><a href='Defaultd.aspx?id=<%# Eval("shopid") %>&amp;catid=<%# Eval("categoryid") %>'>ViewFoodItems</a>&nbsp;</td>
                </tr>
            </table>



			</ItemTemplate>
    </asp:DataList>
</div>
                            </div>
                 
       
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_category] WHERE ([shopid] = @shopid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [tbl_add_fooditems] WHERE (([shopid] = @shopid))">
        <SelectParameters>
            <asp:QueryStringParameter Name="shopid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

