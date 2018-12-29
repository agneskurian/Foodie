<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewshop1.aspx.cs" Inherits="Admin_viewshop1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
            <asp:BoundField DataField="Facility" HeaderText="Facility" SortExpression="Facility" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
    --%>
    <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="Profileid" HeaderText="Profileid" SortExpression="Profileid" />
            <asp:BoundField DataField="shopname" HeaderText="shopname" SortExpression="shopname" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
<%--            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />--%>
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
            <asp:BoundField DataField="Facility" HeaderText="Facility" SortExpression="Facility" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />

            <asp:TemplateField HeaderText="Image">
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:ButtonField CommandName="Select" Text="Approve" />
<%--            <asp:ButtonField CommandName="Select" Text="Reject" />--%>

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_addprofile.shopid, dbshopregister.shopname, dbshopregister.city, dbshopregister.mobile,tbl_addprofile.Profileid, tbl_addprofile.HotelType, tbl_addprofile.image, tbl_addprofile.Location, tbl_addprofile.Distance, tbl_addprofile.Facility, tbl_addprofile.Description, tbl_addprofile.Date FROM tbl_addprofile INNER JOIN dbshopregister ON tbl_addprofile.shopid = dbshopregister.shopid">
        
    </asp:SqlDataSource>
</div>
</asp:Content>

