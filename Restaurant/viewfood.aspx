<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewfood.aspx.cs" Inherits="Restaurant_viewfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="foodid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="foodid" HeaderText="foodid" InsertVisible="False" ReadOnly="True" SortExpression="foodid" />
                      <asp:BoundField DataField="shopid" HeaderText="shopid" SortExpression="shopid" />
                      <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
                <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                      <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                      <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                      <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                      <asp:TemplateField>
                          <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' />
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

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_add_fooditems] WHERE [foodid] = @foodid" InsertCommand="INSERT INTO [tbl_add_fooditems] ([shopid], [foodname],[categoryid],[image], [description], [price]) VALUES (@shopid, @foodname, @categoryid,@image, @description, @price)" SelectCommand="SELECT [shopid], [foodname], [categoryid], [image], [description], [price], [foodid] FROM [tbl_add_fooditems] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [tbl_add_fooditems] SET [shopid] = @shopid, [foodname] = @foodname, [categoryid] = @categoryid, [image] = @image, [description] = @description, [price] = @price WHERE [foodid] = @foodid ">
                            <DeleteParameters>
                                <asp:Parameter Name="foodid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="foodname" Type="String" />
                                <asp:Parameter Name="categoryid" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="shopid" Type="String" />
                                <asp:Parameter Name="foodname" Type="String" />
                                <asp:Parameter Name="categoryid" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="foodid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

             <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                      <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
                      <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                      <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                      <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                      <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                      <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [dbaddfooditems] WHERE [fid] = @fid" InsertCommand="INSERT INTO [dbaddfooditems] ([foodname], [category], [image], [description], [availability], [price]) VALUES (@foodname, @category, @image, @description, @availability, @price)" SelectCommand="SELECT [foodname], [category], [image], [description], [availability], [price], [fid] FROM [dbaddfooditems] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [dbaddfooditems] SET [foodname] = @foodname, [category] = @category, [image] = @image, [description] = @description, [availability] = @availability, [price] = @price WHERE [fid] = @fid">
                            <DeleteParameters>
                                <asp:Parameter Name="fid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="foodname" Type="String" />
                                <asp:Parameter Name="category" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="availability" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="foodname" Type="String" />
                                <asp:Parameter Name="category" Type="String" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="availability" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="fid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>--%>
</div>
</asp:Content>

