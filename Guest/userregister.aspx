<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userregister.aspx.cs" Inherits="Guest_userregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Grocery Store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Sign In & Sign Up :: w3layouts</title>
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
    <form id="form1" runat="server">
    <div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
			  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                  	<div class="tooltip"><a href="FoodieDefault.aspx">Home</a></div>

				</div>
				 <div class="form">
					<h2><center>Create  your account</center></h2>
                        <asp:TextBox ID="txtname" runat="server" placeholder="FullName"></asp:TextBox>
                       <%-- <asp:TextBox ID="txtsname" runat="server" placeholder="ShopName"></asp:TextBox>
                        <asp:TextBox ID="txtcity" runat="server" placeholder="City"></asp:TextBox>
                       --%> <asp:TextBox ID="txtemail" runat="server" placeholder="email/Quicky username" TextMode="Email"></asp:TextBox>
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="txtcpass" runat="server" placeholder="Retype Password" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />			


<%--                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />			--%>
<%--                        <asp:Button ID="Button2" runat="server" Text="Home" OnClick="Button1_Click" />			--%>

				  </div>
				  <%--<div class="form">
					<h2>Create an account</h2>
					<form action="#" method="post">
					  <input type="text" name="Username" placeholder="Username" required=" ">
					  <input type="password" name="Password" placeholder="Password" required=" ">
					  <input type="email" name="Email" placeholder="Email Address" required=" ">
					  <input type="text" name="Phone" placeholder="Phone Number" required=" ">
					  <input type="submit" value="Register">
					</form>
				  </div>--%>
<%--				  <div class="cta"><a href="#">Login</a></div>--%>
				</div>
			</div>
			<script>
			    $('.toggle').click(function () {
			        // Switches the Icon
			        $(this).children('i').toggleClass('fa-pencil');
			        // Switches the forms  
			        $('.form').animate({
			            height: "toggle",
			            'padding-top': 'toggle',
			            'padding-bottom': 'toggle',
			            opacity: "toggle"
			        }, "slow");
			    });
			</script>
		</div>

        <script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.js"></script>
<script>
    paypal.minicart.render();

    paypal.minicart.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        if (total < 3) {
            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
            evt.preventDefault();
        }
    });

	</script>

    </form>
</body>
</html>

	