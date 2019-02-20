<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="hotelref.aspx.cs" Inherits="Restaurant_hotelref" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Add Food Items</h4>
                    
     <table class="nav-justified">
             <tr>
             <td><div class="form-group">
             <label class="col-lg-2 control-label">Phone Number</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtphn" runat="server"  class="form-control" placeholder=""></asp:TextBox></div>
            </td>

         </tr>
             <tr>
             <td><div class="form-group">
             <label class="col-lg-2 control-label">Opening & closing time</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtoctime" runat="server"  class="form-control" placeholder=""></asp:TextBox></div>
            </td>

         </tr>
         </table>
         <br />
         <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Add" OnClick="Button1_Click" />
<%--                               <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Cancel" />--%>
                            </div>
                          </div>
                        
          </div>
        

</asp:Content>

