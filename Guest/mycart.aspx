<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mycart.aspx.cs" Inherits="Guest_mycart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quicky Online Foood Delivery</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
<div class="agileits_header">
		<%--<div class="w3l_offers">
			<a href="products.html">Today's special Offers !</a>
		</div>--%>


    

                
     <div class="w3ls_logo_products_left1"   style="color: #FFFFFF">
				<ul class="special_items">
					<li><a href="FoodieDefault.aspx" style="color: #FFFFFF">Home</a><i>/</i></li>
					<li><a href="about.html" style="color: #FFFFFF">About Us</a><i>/</i></li>
					<li><a href="products.html" style="color: #FFFFFF">Services</a><i>/</i></li>
					<li><a href="services.html" style="color: #FFFFFF">Contact Us</a><i>/</i></li>
                    <li><a href="mycart.aspx" style="color: #FFFFFF">MyCart</a><i>/</i></li>

   <li><a href="../userlogout.aspx" style="color: #FFFFFF">Logout</a></li>
				</ul>
			</div>

		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<li><a href="adminlogin.aspx">Login</a></li> 
                                <li><a href="shoplogin.aspx">Shop Login</a></li>
							</ul>
						</div>                  
					</div>	
				</li>
			</ul>
		</div>
<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	    $(document).ready(function () {
	        var navoffeset = $(".agileits_header").offset().top;
	        $(window).scroll(function () {
	            var scrollpos = $(window).scrollTop();
	            if (scrollpos >= navoffeset) {
	                $(".agileits_header").addClass("fixed");
	            } else {
	                $(".agileits_header").removeClass("fixed");
	            }
	        });

	    });
	</script>
    <form id="form1" runat="server">
    <div>
    
    
   <div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
			<h3>Chec<span>kout</span></h3>
			
	      <div class="checkout-right">

					<h4>Your shopping cart contains: <span>3 Products</span></h4>

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="608px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                  <Columns>
                      <%--<asp:BoundField DataField="shopid" HeaderText="Shopid" SortExpression="shopid" />--%>
                      <asp:BoundField DataField="foodid" HeaderText="Foodid" SortExpression="foodid" />
                      <asp:BoundField DataField="foodname" HeaderText="FoodName" SortExpression="foodname" />
                      <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                      <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
<%--                      <asp:BoundField DataField="image" HeaderText="Image" SortExpression="status" />--%>
                      <asp:BoundField DataField="totalcost" HeaderText="Totalcost" SortExpression="totalcost" />
<%--                      <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />--%>

                       <asp:TemplateField>
                  <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl='<%# Eval("image") %>' />
                 </ItemTemplate>
                 </asp:TemplateField>
                 <asp:ButtonField CommandName="Select" Text="Order" />

                  </Columns>
                  <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                  <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                  <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F7F7F7" />
                  <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                  <SortedDescendingCellStyle BackColor="#E5E5E5" />
                  <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT  tbl_add_fooditems.foodname, tbl_add_fooditems.image, tbl_order.foodid,tbl_order.quantity, tbl_order.email, tbl_order.totalcost FROM tbl_add_fooditems INNER JOIN tbl_order ON tbl_add_fooditems.foodid = tbl_order.foodid WHERE  (([email] = @email) AND ([status] = @status))">
                        <SelectParameters>
                              <asp:SessionParameter Name="email" SessionField="email" Type="String" />

                            <asp:Parameter DefaultValue="Not approved" Name="status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>


              <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:BoundField DataField="foodid" HeaderText="foodid" SortExpression="foodid" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                      <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                      <asp:BoundField DataField="totalcost" HeaderText="totalcost" SortExpression="totalcost" />
                      <asp:BoundField DataField="foodname" HeaderText="foodname" SortExpression="foodname" />
                      <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                  </Columns>
                    </asp:GridView>--%>
              <br />

        <asp:Button ID="Button1"   runat="server" Text="Add to Basket" BackColor="#66CCFF" OnClick="Button1_Click" />

			</div>
			
		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
	
    </form>

</body>
</html>
