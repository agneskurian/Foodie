<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="FoodieDefault.aspx.cs" Inherits="Guest_FoodieDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
         window.history.forward(1);
    </script>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<%-- <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4">
        <ItemTemplate>
            <h1><asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' /></h1>
            <br />
            <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("image") %>' />
            <br />
            <h2><asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' /></h2>
            <br />
           <p> <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' /></p>

        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image], [City], [Description] FROM [tbl_add_hotel_details] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
--%>
   </asp:Content>

