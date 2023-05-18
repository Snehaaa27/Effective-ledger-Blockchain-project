<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "utility.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BLOCKCHAIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Medico Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- portfolio -->	
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="all">
<!-- //portfolio -->	
<link href="css/W3.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_b.css" rel="stylesheet" type="text/css" media="all" />
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 

<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
</head>
<body>
	<!-- banner -->
	<div class="banner jarallax">
		<div class="agileinfo-dot">
			<div class="header-top">
				<div class="header">
					<div class="header-top-info">
						<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<div class="agileits-logo">
									<h1><a href="index.jsp">Block <span>Chain</span></a></h1>
								</div>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
								<nav>
									<ul class="nav navbar-nav">
										<jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>
									</ul>
								</nav>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<button class="button1" name="button" value="OK" type="button"
		onclick="location.href ='.jsp';">
		<span>Back</span>
	</button>
	<%
	String pid = (String)request.getParameter("pid");
	String pname = (String)request.getParameter("pname");
	session.setAttribute("pid", pid);
	%>
	<center>
			<h2 class="tittle-one wow fadeInDown">ADD REPORTS</h2>
			<div style="height: auto;">	<div class="w3-container">
			<form action="blockchain" method="post" autocomplete="off">
					<table class="w3-table w3-card-4 w3-hoverable w3-bordered w3-striped">
						<tr> 
							<th class="w3-grey">Patient ID</th><td><%=pid%></td>
						</tr>
						<tr> 
							<th class="w3-grey">Patient Name</th><td><%=pname %></td>
						</tr>
						<!-- <tr> 
							<th class="w3-grey">UPLOAD REPORT</th><td><input type="file" name="file1"></td>
						</tr> -->
						<tr> 
							<th class="w3-grey">SELECT REPORT</th>
							<td><label for="inputfile" style="cursor: pointer;">Click Here to Choose File</label><input type="file" name="inputfile" id="inputfile" style="display: none;"></td>
						</tr>
						<tr height="200px"> 
							<th class="w3-grey">DETAILS</th>
							<td><textarea rows="10" cols="20" id="output1" name="fileData"></textarea></td>
						</tr>
						<tr> 
							<th class="w3-grey"></th><td><input type="submit" value="UPDATE"></td>
						</tr>
					</table>
				</form>
				</div>
			</div>
	</center>
	
	<script>
// For Showing Selected Image
var loadFile = function(event) {
	var image = document.getElementById('output');
	image.src = URL.createObjectURL(event.target.files[0]);
};
</script>
<script type="text/javascript">
//For Showing Selected File
        document.getElementById('inputfile')
            .addEventListener('change', function() {
              
            var fr=new FileReader();
            fr.onload=function(){
                document.getElementById('output1')
                        .textContent=fr.result;
            }
              
            fr.readAsText(this.files[0]);
        })
    </script>
	
	
	
	<!-- footer -->
	<footer>
		<div class="container">
			<div class="copyright">
				<jsp:include page="WEB-INF/include/Footer.jsp"></jsp:include>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
	<script src="js/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
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
	<!-- Tabs-JavaScript -->
	<script src="js/jquery.filterizr.js"></script>
		<script src="js/controls.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-container').filterizr();
			});
		</script>
	<!-- //Tabs-JavaScript -->
	<!-- PopUp-Box-JavaScript -->
		<script src="js/jquery.chocolat.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-item a').Chocolat();
			});
		</script>
	<!-- //PopUp-Box-JavaScript -->
</body>	
</html>