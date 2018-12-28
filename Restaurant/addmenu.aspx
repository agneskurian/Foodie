<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addmenu.aspx.cs" Inherits="Restaurant_addmenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Add Menu</h4>
                    
     <table class="nav-justified">

             <tr>
            
             <td><div class="form-group"><label class="col-lg-2 control-label">Image</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px" />
                 <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"/>
                <asp:Image ID="Image1" runat="server" Width="100px" />                
                <br />

<%--             &nbsp;<asp:TextBox ID="txtimg" runat="server"  class="form-control" placeholder=""></asp:TextBox>--%>
                 </div></td>
         </tr>

         </table>
         <br />
         <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Add" OnClick="Button2_Click" />
<%--                               <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Cancel" />--%>
                            </div>
                          </div>
         
         </div>
</asp:Content>

