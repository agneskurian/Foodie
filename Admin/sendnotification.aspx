<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="sendnotification.aspx.cs" Inherits="Admin_sendnotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Employee Details</h4>

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="shopid" DataValueField="shopid"></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [shopid] FROM [dbaddprofile] WHERE([Status=@Status])">
  <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
     <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="username"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [username] FROM [cart] WHERE ([Status] = @Status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    <br />
        <br/>
    <br/>

    Send Notification<asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="246px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 46px" TextMode="MultiLine"></asp:TextBox>


<br />
<br />
<br />
<asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Send notification" />
<br />
<br />
<br />
</div>
</asp:Content>

