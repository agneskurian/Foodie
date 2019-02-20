<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewmiddle.aspx.cs" Inherits="Guest_viewmiddle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
					<li><a href="events.html" style="color: #FFFFFF">Home</a><i>/</i></li>
					<li><a href="about.html" style="color: #FFFFFF">About Us</a><i>/</i></li>
					<li><a href="products.html" style="color: #FFFFFF">Services</a><i>/</i></li>
					<li><a href="services.html" style="color: #FFFFFF">Contact Us</a><i>/</i></li>
<%--                    <li><a href="logout.aspx" style="color: #FFFFFF">Logout</a></li>--%>
				</ul>
			</div>

		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<li><a href="adminlogin.aspx">AdminLogin</a></li> 
                                <li><a href="shoplogin.aspx">Shop Login</a></li>
								<li><a href="userlogin.aspx">User Login</a></li>
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
			<div class="clearfix"> </div>
<!-- //header -->
<!-- banner -->
    	<br />
         <div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1><a href="FoodieDefault.aspx"><span><b>QUICKY</b></span></a></h1>
			</div>
	<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>

				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
    <div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="products.html">Home</a></li>
						<li><a href="household.html">Login</a></li>							
						<li><a href="kitchen.html">AboutUs</a></li>
						<li><a href="short-codes.html">Services</a></li>
                        <li><a href="short-codes.html">Restaurants</a></li>
                        <li><a href="short-codes.html">Tea Shops</a></li>
						<li><a href="pet.html">CoolBars</a></li>
<%--						<li><a href="bread.html">Logout</a></li>--%>
                        <li><a href="bread.html">ContactUs</a></li>

					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
       
    <form id="form1" runat="server">
   


         <asp:DataList ID="DataList2" runat="server"  DataSourceID="SqlDataSource1" RepeatColumns="2">
                 <ItemTemplate>
                  <div class="services">

    		<div class="w3ls_service_grids1">
				<div class="col-md-6 w3ls_service_grids1_left">
                  <asp:Image ID="Image1" runat="server" Height="160px" Width="160px" ImageUrl='<%# Eval("image") %>' />
                    <br />
				</div>
                <h4><asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' /></h4>
                <br />
				<div class="col-md-6 w3ls_service_grids1_left">
					<a href="purchase.aspx">ViewMore</a>
				</div>
				<div class="clearfix"> </div>
			</div>
            </div>
            </ItemTemplate>

	    </asp:DataList>
 
             </form>
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image], [City] FROM [tbl_add_hotel_details] WHERE (([Status] = @Status) AND ([HotelType] = @HotelType))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
                <asp:Parameter DefaultValue="Middle Class" Name="HotelType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
	         <%--<asp:DataList ID="DataList2" runat="server"  DataSourceID="SqlDataSource1" RepeatColumns="2">
                 <ItemTemplate>
                     <div class="services">

    		<div class="w3ls_service_grids1">
				<div class="col-md-6 w3ls_service_grids1_left">
                    <asp:Image ID="Image1" runat="server" Height="160px" Width="160px" ImageUrl='<%# Eval("image") %>' />
                    </div>
                <h4><asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' /></h4>
                <br />
				<div class="col-md-6 w3ls_service_grids1_right">
					<a href="adminlogin.aspx">ViewMore</a>
				</div>
				<div class="clearfix"> </div>
			</div>
            </div>
            </ItemTemplate>
         </asp:DataList> 
        </form>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image] FROM [tbl_add_hotel_details] WHERE (([Status] = @Status) AND ([HotelType] = @HotelType))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
                <asp:Parameter DefaultValue="Middle Class" Name="HotelType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>--%>

</body>
    </html>
