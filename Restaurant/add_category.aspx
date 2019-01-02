<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Restaurant_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
       <h4 class="mb">View Employee Details</h4>
    <table class="nav-justified">

            <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Category name</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtcname" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtcname" ></asp:RequiredFieldValidator>
                 <br />
                 </div></td>
         </tr> 
     <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Image</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px" />
                 <br />
                <asp:Button ID="Button3" runat="server" Text="Upload" OnClick="Button3_Click"/>
                <asp:Image ID="Image1" runat="server" Width="100px" />                
                <br />

                 </div></td>
         </tr>

           </table>
           
         <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="ADD" OnClick="Button1_Click" />
                 </div>
</asp:Content>

