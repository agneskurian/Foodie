<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewstatus.aspx.cs" Inherits="Restaurant_viewstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Status Details</h4>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="410px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
              <Columns>
<%--                  <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />--%>
                  <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                  <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                  <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [shopid], [Status] FROM [tbl_add_hotel_details] WHERE ([shopid] = @shopid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />

                            </SelectParameters>
                        </asp:SqlDataSource>
         </div>
</asp:Content>

