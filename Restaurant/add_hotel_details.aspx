﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="add_hotel_details.aspx.cs" Inherits="Restaurant_add_hotel_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Add Food Category</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-14">
            <div class="form-panel">
                <table class="nav-justified">


            <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Hotel name</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txthname" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txthname" ></asp:RequiredFieldValidator>
                 <br />
                 </div></td>
         </tr> 
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
             <td><div class="form-group"><label class="col-lg-2 control-label">City</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtcity" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtcity" ></asp:RequiredFieldValidator>
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
             <td><div class="form-group"><label class="col-lg-2 control-label">Phone</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtphn" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtphn" ></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" ErrorMessage="Enter a valid phone number
                        " ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

                 <br />
                 </div></td>
         </tr>
         
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">DeliveryTime</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtdtm" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdtm" ForeColor="Red"></asp:RequiredFieldValidator>
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
                     <asp:ListItem>No online delivery</asp:ListItem>

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
                 </div>&nbsp;</td>
         </tr>
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Date</label>&nbsp;</div></td>
             <td><div class="col-lg-6"><asp:TextBox ID="txtdate" runat="server"  class="form-control" placeholder="" required="" TextMode="Date"></asp:TextBox>
                             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>     

                 <br />
                 </div>&nbsp;</td>
         </tr>
                                   </table>

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Save" OnClick="Button1_Click" />
                               <asp:Button ID="Button2" class="btn btn-theme04" runat="server" Text="Cancel" OnClick="Button2_Click" />
                            </div>
                          </div>
          </div>
              </div></div>

          </section>
        </section>
    
</asp:Content>

