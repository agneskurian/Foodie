<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addgallery.aspx.cs" Inherits="Restaurant_addgallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Add Food Items</h4>
         <table>
                    <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Image</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px" />
                
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"/>
                 <br />
                <asp:Image ID="Image1" runat="server" Width="100px" Height="150" />                
                        </div>         </td>

                </tr>
             </table>
    </div>
</asp:Content>

