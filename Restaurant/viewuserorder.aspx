<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewuserorder.aspx.cs" Inherits="Restaurant_viewuserorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Add Food Category</h3>
        <div class="row mt">
    
            <div class="col-lg-14">
   <div class="form-panel">
          
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cartid" DataSourceID="SqlDataSource1" Height="574px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="cartid" HeaderText="cartid" ReadOnly="True" SortExpression="cartid" />
            <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
            <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
            <asp:BoundField DataField="foodid" HeaderText="foodid" SortExpression="foodid" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="totalcost" HeaderText="totalcost" SortExpression="totalcost" />
            <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
            <asp:TemplateField>
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" widyh="100" ImageUrl='<%# Eval("image") %>' />
                 </ItemTemplate>
                 </asp:TemplateField>
                                                        <asp:ButtonField CommandName="Select" Text="Approve" />

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

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>"  SelectCommand="SELECT  tbl_add_fooditems.foodname, tbl_add_fooditems.image, tbl_order.cartid, tbl_order.shopid, tbl_order.categoryid, tbl_order.foodid, tbl_order.email, tbl_order.quantity, tbl_order.totalcost FROM tbl_add_fooditems INNER JOIN tbl_order ON tbl_add_fooditems.foodid = tbl_order.foodid WHERE ([status] = @status)"> 
            <SelectParameters>
<%--                              <asp:SessionParameter Name="email" SessionField="email" Type="String" />--%>

                            <asp:Parameter DefaultValue="Not approved" Name="status" Type="String" />
                        </SelectParameters>

       </asp:SqlDataSource>
            </div>
                </div>
            </div>
          </section>
        </section>

<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT tbl_order.cartid, tbl_order.shopid, tbl_order.categoryid, tbl_order.foodid, tbl_order.email, tbl_order.quantity, tbl_order.totalcost, tbl_add_fooditems.foodname, tbl_add_fooditems.image FROM tbl_order CROSS JOIN tbl_add_fooditems"></asp:SqlDataSource>--%>

</asp:Content>

