<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewstatus.aspx.cs" Inherits="Restaurant_viewstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Profileid" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />
                  <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                  <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
              </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [Profileid], [shopid], [Status] FROM [tbl_addprofile] WHERE (([Status] = @Status) AND ([shopid] = @shopid))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
<%--                               <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />--%>

                            </SelectParameters>
                        </asp:SqlDataSource>
   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Profileid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Profileid" HeaderText="Profileid" InsertVisible="False" ReadOnly="True" SortExpression="Profileid" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [Profileid], [shopid], [Status] FROM [tbl_addprofile] WHERE (([Status] = @Status) AND ([shopid] = @shopid))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
            <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   --%>       </div>
</asp:Content>

