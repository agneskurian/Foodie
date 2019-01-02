<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="view_all_hotels.aspx.cs" Inherits="Admin_view_all_hotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
   
    <asp:Label ID="Label1" runat="server" Text="Search Neede Item"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT DISTINCT [City] FROM [tbl_add_hotel_details]"></asp:SqlDataSource>
                        <br />

<%--         <asp:Panel ID="Panel1" runat="server" Visible="False">--%>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="384px" Visible="False">
             <Columns>
                 <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                 <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                 <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                 <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
<%--             </asp:Panel>--%>
                       
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [Location], [shopid], [image] FROM [tbl_add_hotel_details] WHERE ([City] = @City)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="City" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>

          </asp:SqlDataSource>
         </div>
     </asp:Content>

