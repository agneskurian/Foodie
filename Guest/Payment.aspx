<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Guest_Payment" %>

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
    <form id="form1" runat="server">
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
 
    

        <div class="w3l_banner_nav_right">
<!-- payment -->
		<div class="privacy about">
			<h3>Pay<span>ment</span></h3>
			
	         <div class="checkout-right">
				<!--Horizontal Tab-->
        <div id="parentHorizontalTab">
				<h1>Cash on delivery (COD)</h1>
            <br />
                        <div class="resp-tabs-container hor_1">

				<div>
                                     <div class="vertical_post check_box_agile">
											<div class="checkbox">								
												<div class="check_box_one cashon_delivery">
													<label class="anim">
														<input type="checkbox" class="checkbox">
																 <span> We accept cash after delivery of items. Please Check the details of delivery boy given below.Thanks for ordering from quicky</span> 
															</label> 
											</div>
											
									</div>
								</div>
                </div>
               								
            </div>

            <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    empid:
                    <asp:Label ID="empidLabel" runat="server" Text='<%# Eval("empid") %>' />
                    <br />
                    empname:
                    <asp:Label ID="empnameLabel" runat="server" Text='<%# Eval("empname") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    <br />
                    image:
                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    <br />
<br />
                </ItemTemplate>
                </asp:DataList>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [empid], [empname], [phone], [image] FROM [dbaddemploye] WHERE ([shopid] = @shopid)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="shopid" Name="shopid" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </form>


</body>
</html>
