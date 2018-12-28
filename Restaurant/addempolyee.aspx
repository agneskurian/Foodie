<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addempolyee.aspx.cs" Inherits="Restaurant_addempolyee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Add Employee Details</h4>
                    
     <table class="nav-justified">
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">EmployeeId</label>&nbsp;</div>    </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtempid" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtempid" ForeColor="Red" ></asp:RequiredFieldValidator>
                 </div></td>

         </tr>
             <tr>
             <td><div class="form-group">
             <label class="col-lg-2 control-label">Name</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtename" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtename" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only characters" ControlToValidate="txtename" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                 <br />
                 </div>
                 <br />

            </td>

         </tr>
          
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Mobile</label>&nbsp;</div></td>
             <td><div class="col-lg-6"><asp:TextBox ID="txtmphn" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtmphn" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid phone number" ControlToValidate="txtmphn" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                 <br />
                 </div>&nbsp;</td>
         </tr>
    
         <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Image</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
                 <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="128px"/>
                                  <br />

                <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click"/>
                 <br />
                <asp:Image ID="Image1" runat="server" Width="100px" />                
                

<%--             &nbsp;<asp:TextBox ID="txtimg" runat="server"  class="form-control" placeholder=""></asp:TextBox>--%>
                 </div></td>
         </tr>
         


        
         </table>
         <br />
         <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Add" OnClick="Button1_Click"/>
<%--                               <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Cancel" />--%>
                            </div>
                          </div>
                        
          </div>
        



</asp:Content>

