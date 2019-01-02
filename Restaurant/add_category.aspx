<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Restaurant_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
       <h4 class="mb">View Employee Details</h4>
    
    <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
    <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
         <br />
          <div class="form-group">
             <div class="col-lg-offset-2 col-lg-10">
                         
         <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="ADD" OnClick="Button1_Click" />
                 </div>
              </div>
</div>
</asp:Content>

