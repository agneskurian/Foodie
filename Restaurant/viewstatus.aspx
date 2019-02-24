<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewstatus.aspx.cs" Inherits="Restaurant_viewstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="410px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
<%--                  <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />--%>
                  <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                  <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                  <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [shopid], [Status] FROM [tbl_add_hotel_details] WHERE ([shopid] = @shopid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />

                            </SelectParameters>
                        </asp:SqlDataSource>
         </div>
</asp:Content>

