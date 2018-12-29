<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addfood.aspx.cs" Inherits="Restaurant_addfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Add Food Items</h4>
                    
     <table class="nav-justified">
             <tr>
             <td><div class="form-group">
             <label class="col-lg-2 control-label">Food Name</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtfname" runat="server"  class="form-control" placeholder=""></asp:TextBox></div>
            </td>

         </tr>
          <tr>
             <td class="auto-style1"><div class="form-group"><label class="col-lg-2 control-label">Category</label>&nbsp;</div>

             </td>
             <td class="auto-style1"><div class="col-lg-6">
                 <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>BreakFast</asp:ListItem>
                     <asp:ListItem>Lunch</asp:ListItem>
                     <asp:ListItem>Dinner</asp:ListItem>
                     <asp:ListItem>Non-Veg</asp:ListItem>

                 </asp:DropDownList>
                 <br />
                 </div></td>
         </tr>
        
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Image</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px" />
                
                <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click"/>
                 <br />
                <asp:Image ID="Image1" runat="server" Width="100px" />                
                

<%--             &nbsp;<asp:TextBox ID="txtimg" runat="server"  class="form-control" placeholder=""></asp:TextBox>--%>
                 </div></td>
         </tr>
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Description</label>&nbsp;</div></td>
             <td><div class="col-lg-6"><asp:TextBox ID="txtdescription" runat="server"  class="form-control" placeholder="" TextMode="MultiLine"></asp:TextBox>
                 <br />
                 </div>&nbsp;</td>
         </tr>
    


         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Availability</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtavail" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <br />
                 </div></td>
         </tr>
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Price</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtprice" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <br />
                                               <br />

                 </div></td>

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

