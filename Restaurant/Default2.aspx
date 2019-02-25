<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Restaurant_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb"> View Food Details</h4>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="foodid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="foodid" HeaderText="foodid" ReadOnly="True" SortExpression="foodid" />
                                    <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                  <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
                  <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />

                  <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="foodname" />

                  <asp:TemplateField>
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
              </asp:TemplateField>

              </Columns>
                <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_add_fooditems] WHERE [foodid] = @foodid" InsertCommand="INSERT INTO [tbl_add_fooditems] ([foodid], [categoryid],[foodname], [image], [price]) VALUES (@foodid, @foodname, @image, @price)" SelectCommand="SELECT [foodid],[categoryid], [foodname], [image], [description], [price] FROM [tbl_add_fooditems] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [tbl_add_fooditems] SET [categoryid] = @categoryid,[foodname] = @foodname, [image] = @image, [price] = @price WHERE [foodid] = @foodid">
                            <DeleteParameters>
                                <asp:Parameter Name="foodid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="foodid" Type="String" />
                               <asp:Parameter Name="categoryid" Type="String" />
                                <asp:Parameter Name="foodname" Type="String" />
                               <asp:Parameter Name="description" Type="String" />
                                                                <asp:Parameter Name="image" Type="String" />

                                <asp:Parameter Name="price" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="foodname" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                               <asp:Parameter Name="description" Type="String" />
                                                               <asp:Parameter Name="categoryid" Type="String" />

                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="foodid" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
    </div>
</asp:Content>

