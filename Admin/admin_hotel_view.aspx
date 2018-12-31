<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="admin_hotel_view.aspx.cs" Inherits="Admin_admin_hotel_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                <asp:BoundField DataField="Hoteldetailid" HeaderText="Hoteldetailid" SortExpression="Hoteldetailid" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Deliverytime" HeaderText="Deliverytime" SortExpression="Deliverytime" />
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

                        <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                        </asp:GridView>
     
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_hotel_register.email, tbl_add_hotel_details.shopid,tbl_add_hotel_details.Hoteldetailid, tbl_add_hotel_details.HotelName, tbl_add_hotel_details.HotelType, tbl_add_hotel_details.City, tbl_add_hotel_details.image, tbl_add_hotel_details.Location, tbl_add_hotel_details.Deliverytime, tbl_add_hotel_details.Facility, tbl_add_hotel_details.Description, tbl_add_hotel_details.Date FROM tbl_add_hotel_details INNER JOIN tbl_hotel_register ON tbl_add_hotel_details.shopid = tbl_hotel_register.shopid where Status=@Status">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
     
        </div>
</asp:Content>

