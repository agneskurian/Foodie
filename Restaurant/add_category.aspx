<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Restaurant_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-panel {
            height: 468px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Add Food Category</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-12">
            <div class="form-panel"><table class="nav-justified">

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
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
         <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Add Category" OnClick="Button1_Click" />
                 </div>
              </div>

        </div>

      </section>

    </section>
</asp:Content>

