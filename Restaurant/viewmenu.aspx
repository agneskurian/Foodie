<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewmenu.aspx.cs" Inherits="Restaurant_viewmenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="menuid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="274px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="menuid" HeaderText="menuid" InsertVisible="False" ReadOnly="True" SortExpression="menuid" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [dbaddmenu] WHERE [menuid] = @menuid" InsertCommand="INSERT INTO [dbaddmenu] ([image]) VALUES (@image)" SelectCommand="SELECT [menuid], [image] FROM [dbaddmenu]" UpdateCommand="UPDATE [dbaddmenu] SET [image] = @image WHERE [menuid] = @menuid">
                            <DeleteParameters>
                                <asp:Parameter Name="menuid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="image" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="menuid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
     </div>
</asp:Content>

