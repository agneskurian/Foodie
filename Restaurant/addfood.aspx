<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant/RestaurantMaster.master" AutoEventWireup="true" CodeFile="addfood.aspx.cs" Inherits="Restaurant_addfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 95px;
        }
    </style>
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
             <td><div class="form-group">
             <label class="col-lg-2 control-label">Food Name</label>&nbsp;</div>
             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtfname" runat="server"  class="form-control" placeholder="Foodname"></asp:TextBox></div>
            </td>

         </tr>
        
          <tr>
             <td class="auto-style1"><div class="form-group"><label class="col-lg-2 control-label">Category</label>&nbsp;</div>

             </td>
             <td class="auto-style1"><div class="col-lg-6">
                 <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="categoryid">
                     
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [categoryid], [categoryname] FROM [tbl_category]"></asp:SqlDataSource>
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
                <asp:Image ID="Image1" runat="server" Width="100px" Height="150" />                
                

<%--             &nbsp;<asp:TextBox ID="txtimg" runat="server"  class="form-control" placeholder=""></asp:TextBox>--%>
                 </div></td>
                                                                <br />

         </tr>
          <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Description</label>&nbsp;</div></td>
             <td><div class="col-lg-6"><asp:TextBox ID="txtdescription" runat="server"  class="form-control" placeholder="" TextMode="MultiLine"></asp:TextBox>
                 <br />
                 </div>&nbsp;</td>
         </tr>



       <tr>
             <td><div class="form-group"><label class="col-lg-2 control-label">Price</label>&nbsp;</div>

             </td>
             <td><div class="col-lg-6">
             &nbsp;<asp:TextBox ID="txtprice" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                 <br />

                 </div></td>

         </tr>
         </table>
         <br />
         <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button ID="Button1" class="btn btn-theme" runat="server" Text="Add Food" OnClick="Button1_Click" />
<%--                               <asp:Button ID="Button2" class="btn btn-theme" runat="server" Text="Cancel" />--%>
                            </div>
             <br />
                          </div>
                        
          </div>
        
</div></div>
          </section>
         </section>
</asp:Content>

