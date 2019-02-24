<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewfooditems.aspx.cs" Inherits="Admin_viewfooditems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="foodid">
        <ItemTemplate>
            foodname:
            <asp:Label ID="foodnameLabel" runat="server" Text='<%# Eval("foodname") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            categoryid:
            <asp:Label ID="categoryidLabel" runat="server" Text='<%# Eval("categoryid") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [foodname], [image], [description], [price], [categoryid] FROM [tbl_add_fooditems] WHERE  [foodid] = @foodid">
        <SelectParameters>
            <asp:Parameter DefaultValue="foodid" Name="foodid" />
        </SelectParameters>
    </asp:SqlDataSource>
          </div>
</asp:Content>

