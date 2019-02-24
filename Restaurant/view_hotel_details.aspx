<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="view_hotel_details.aspx.cs" Inherits="Restaurant_view_hotel_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Hoteldetailid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="Hoteldetailid" HeaderText="Hoteldetailid" InsertVisible="False" ReadOnly="True" SortExpression="Hoteldetailid" />
                 <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                 <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                 <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
                 <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                 <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                 <asp:BoundField DataField="Deliverytime" HeaderText="Deliverytime" SortExpression="Deliverytime" />
                 <asp:BoundField DataField="Facility" HeaderText="Facility" SortExpression="Facility" />
                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                 <asp:TemplateField>
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
              </asp:TemplateField>

   
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_add_hotel_details] WHERE [Hoteldetailid] = @Hoteldetailid" InsertCommand="INSERT INTO [tbl_add_hotel_details] ([shopid], [HotelName], [HotelType], [image], [City], [Location], [Deliverytime], [Facility], [Description], [Date]) VALUES (@shopid, @HotelName, @HotelType, @image, @City, @Location, @Deliverytime, @Facility, @Description, @Date)" SelectCommand="SELECT [Hoteldetailid], [shopid], [HotelName], [HotelType], [image], [City], [Location], [Deliverytime], [Facility], [Description], [Date] FROM [tbl_add_hotel_details] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [tbl_add_hotel_details] SET [shopid] = @shopid, [HotelName] = @HotelName, [HotelType] = @HotelType, [image] = @image, [City] = @City, [Location] = @Location, [Deliverytime] = @Deliverytime, [Facility] = @Facility, [Description] = @Description, [Date] = @Date WHERE [Hoteldetailid] = @Hoteldetailid">
                            <DeleteParameters>
                                <asp:Parameter Name="Hoteldetailid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelType" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Deliverytime" Type="String" />
                                <asp:Parameter Name="Facility" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelType" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Deliverytime" Type="String" />
                                <asp:Parameter Name="Facility" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Hoteldetailid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
    </div>
</asp:Content>

