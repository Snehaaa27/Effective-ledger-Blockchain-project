<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>
	<title>AUTHENTICATION</title>
	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="keywords" content="Library Member Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->
	<!-- Style --> <link rel="stylesheet" href="css_R/style.css" type="text/css" media="all">
	<!-- Fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<!-- //Fonts -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
 
	<h1 style="color:black">HOSPITAL REGISTRATION</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>Login</h2>
			<form action="HospLog" method="post" autocomplete="off">
				<input type="text" Name="em" placeholder="Email ID" required="">
				<input type="password" Name="pw" placeholder="Password" required="">
			<ul class="tick w3layouts agileits">
				<!-- <li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
				</li> -->
			</ul>
			<div class="send-button w3layouts agileits">
					<input type="submit" value="Sign In">
				</form>
			</div>
			<div class="clear"></div>
		</div>

		<div class="register w3layouts agileits">
			<h2>Register</h2>
			<form action="HospRegister" method="post" autocomplete="off">
				<input type="text" Name="un" placeholder="Hospital Name" required="">
				<input type="text" Name="ph" placeholder="Phone" required="">
				<input type="text" Name="em" placeholder="Email" required="">
				<input type="password" Name="pw" placeholder="Password" required="">
				<input type="password" Name="ps1" placeholder="Confirm Password" required="">
				<input type="text" Name="ad" placeholder="Hospital Address" required="">
				<div class="send-button w3layouts agileits">
					<input type="submit" value="Register"></div>
				</form>  
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="footer w3layouts agileits">
	</div>

</body>
<!-- //Body -->

</html>