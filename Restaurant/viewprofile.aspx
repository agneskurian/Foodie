<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewprofile.aspx.cs" Inherits="Restaurant_viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Profileid" DataSourceID="SqlDataSource1" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />
                 <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                 <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
                 <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                 <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                 <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
                 <asp:BoundField DataField="Facility" HeaderText="Facility" SortExpression="Facility" />
                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                 <asp:TemplateField>
                 <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
   
            </asp:TemplateField>
        
             </Columns>
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_addprofile] WHERE [Profileid] = @Profileid" InsertCommand="INSERT INTO [tbl_addprofile] ([shopid], [HotelType], [image], [Location], [Distance], [Facility], [Description], [Date]) VALUES (@shopid, @HotelType, @image, @Location, @Distance, @Facility, @Description, @Date)" SelectCommand="SELECT [Profileid], [shopid], [HotelType], [image], [Location], [Distance], [Facility], [Description], [Date] FROM [tbl_addprofile] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [tbl_addprofile] SET [shopid] = @shopid, [HotelType] = @HotelType, [image] = @image, [Location] = @Location, [Distance] = @Distance, [Facility] = @Facility, [Description] = @Description, [Date] = @Date WHERE [Profileid] = @Profileid">
                            <DeleteParameters>
                                <asp:Parameter Name="Profileid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="HotelType" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Distance" Type="String" />
                                <asp:Parameter Name="Facility" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="HotelType" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter Name="Distance" Type="String" />
                                <asp:Parameter Name="Facility" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Profileid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Profileid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />
            <asp:BoundField DataField="HotelType" HeaderText="HotelType" SortExpression="HotelType" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
            <asp:BoundField DataField="Facility" HeaderText="Facility" SortExpression="Facility" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:TemplateField>
                 <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
   
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_addprofile] WHERE [Profileid] = @Profileid" InsertCommand="INSERT INTO [tbl_addprofile] ([HotelType], [image], [Location], [Distance], [Facility], [Description]) VALUES (@HotelType, @image, @Location, @Distance, @Facility, @Description)" SelectCommand="SELECT [Profileid], [HotelType], [image], [Location], [Distance], [Facility], [Description] FROM [tbl_addprofile] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [addprofile] SET [HotelType] = @HotelType, [image] = @image, [Location] = @Location, [Distance] = @Distance, [Facility] = @Facility, [Description] = @Description WHERE [Profileid] = @Profileid">
        <DeleteParameters>
            <asp:Parameter Name="Profileid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HotelType" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Distance" Type="String" />
            <asp:Parameter Name="Facility" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="HotelType" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Distance" Type="String" />
            <asp:Parameter Name="Facility" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Profileid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   --%>      </div>
</asp:Content>

