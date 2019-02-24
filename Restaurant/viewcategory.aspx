<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewcategory.aspx.cs" Inherits="Restaurant_viewcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-8 col-lg-offset-2 detailed mt">
              <h4 class="mb">View Category Details</h4>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:TemplateField>
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
                </ItemTemplate>
              </asp:TemplateField>
        </Columns>
              </asp:GridView>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [tbl_category] WHERE [categoryid] = @categoryid" InsertCommand="INSERT INTO [tbl_category] ([categoryid], [shopid], [categoryname], [image]) VALUES (@categoryid, @shopid, @categoryname, @image)" SelectCommand="SELECT [categoryid], [shopid], [categoryname], [image] FROM [tbl_category] WHERE  ([shopid] = @shopid)" UpdateCommand="UPDATE [tbl_category] SET [shopid] = @shopid, [categoryname] = @categoryname, [image] = @image WHERE [categoryid] = @categoryid">
                  <DeleteParameters>
                      <asp:Parameter Name="categoryid" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="categoryid" Type="Int32" />
                      <asp:Parameter Name="shopid" Type="String" />
                      <asp:Parameter Name="categoryname" Type="String" />
                      <asp:Parameter Name="image" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                                <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="shopid" Type="String" />
                      <asp:Parameter Name="categoryname" Type="String" />
                      <asp:Parameter Name="image" Type="String" />
                      <asp:Parameter Name="categoryid" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>

    </div>

</asp:Content>

