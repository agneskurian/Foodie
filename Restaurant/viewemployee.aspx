<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewemployee.aspx.cs" Inherits="Restaurant_viewemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>

              
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" SortExpression="empid" />
                                <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [dbaddemploye] WHERE [empid] = @empid" InsertCommand="INSERT INTO [dbaddemploye] ([empid], [empname], [phone], [image]) VALUES (@empid, @empname, @phone, @image)" SelectCommand="SELECT [empid], [empname], [phone], [image] FROM [dbaddemploye] WHERE ([shopid] = @shopid)" UpdateCommand="UPDATE [dbaddemploye] SET [empname] = @empname, [phone] = @phone, [image] = @image WHERE [empid] = @empid">
                            <DeleteParameters>
                                <asp:Parameter Name="empid" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="empid" Type="String" />
                                <asp:Parameter Name="empname" Type="String" />
                                <asp:Parameter Name="phone" Type="Decimal" />
                                <asp:Parameter Name="image" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="empname" Type="String" />
                                <asp:Parameter Name="phone" Type="Decimal" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="empid" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
      </div>
</asp:Content>

