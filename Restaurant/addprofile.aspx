<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addprofile.aspx.cs" Inherits="Restaurant_addprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Contact Information</h4>
                    
     <table class="nav-justified">
             
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Hotel Type</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:DropDownList ID="DropDownList1" runat="server" Class="form-control">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Middle Class</asp:ListItem>
                     <asp:ListItem>CoolBar</asp:ListItem>
                     <asp:ListItem>Tea Shop</asp:ListItem>
                     <asp:ListItem>Vanitha</asp:ListItem>
                     <asp:ListItem>High Class</asp:ListItem>

                 </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
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

        
        
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Location</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtlocation" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtlocation" ></asp:RequiredFieldValidator>
                 <br />
                 </div></td>
         </tr>
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Distance</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtdistance" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdistance" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 </div></td>
         </tr>
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Facility</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Online Delivery</asp:ListItem>
                     <asp:ListItem>Add Details</asp:ListItem>

                 </asp:DropDownList>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 </div></td>
         </tr>

         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Description</label>&nbsp;</div></td>
             <td><div class="col-lg-6"><asp:TextBox ID="txtdescription" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtdescription" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT * FROM [dbadd_profile]"></asp:SqlDataSource>
                 </div>&nbsp;</td>
         </tr>
     </table>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Save" OnClick="Button1_Click" />
                               <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Cancel" />
                            </div>
                          </div>
          </div>
                      <!-- /col-lg-8 -->
                   

</asp:Content>

