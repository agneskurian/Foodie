<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="viewemployee.aspx.cs" Inherits="Restaurant_viewemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" SortExpression="empid" />
            <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
            <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" Visible="false" />
            <asp:TemplateField>
                 <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />
  </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" DeleteCommand="DELETE FROM [dbaddemployee] WHERE [empid] = @empid" InsertCommand="INSERT INTO [dbaddemployee] ([empid], [empname], [phn], [image]) VALUES (@empid, @empname, @phn, @image)" SelectCommand="SELECT [empid], [empname], [phn], [image] FROM [dbaddemployee]" UpdateCommand="UPDATE [dbaddemployee] SET [empname] = @empname, [phn] = @phn, [image] = @image WHERE [empid] = @empid">
        <DeleteParameters>
            <asp:Parameter Name="empid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="empid" Type="String" />
            <asp:Parameter Name="empname" Type="String" />
            <asp:Parameter Name="phn" Type="Decimal" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="empname" Type="String" />
            <asp:Parameter Name="phn" Type="Decimal" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="empid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

          </div>
</asp:Content>

