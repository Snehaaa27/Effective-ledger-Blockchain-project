<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>OP Registration Form</title>
	<!-- Meta tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="OP Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tags -->
	<!-- Stylesheet -->
	<link rel="stylesheet" href="css_O/jquery-ui.css" />
	<link href="css_O/style.css" rel='stylesheet' type='text/css' />
	<!-- //Stylesheet -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
<%
String pid = request.getParameter("pid");
session.setAttribute("pid", pid);
%>
	<!--background-->
	<h1>OP Registration Form </h1>
	<div class="register-form-w3layouts">
		<!-- Form starts here -->
		<form action="PT_Adddetail_DB" method="post" autocomplete="off">
			<h3 class="sub-heading-agileits">Personal Details</h3>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="pid" placeholder="Patient ID" required="" value="<%=pid%>" readonly>
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="name" placeholder="Name" required="">
				</div>
			</div>
			<!-- <div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="email" name="Email" placeholder="Email" required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="Phone no" placeholder="Phone Number" required="">
				</div>
			</div> -->
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input id="datepicker" name="dob" type="text" placeholder="DOB" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
					    required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<select class="form-control" name="gen">
						<option>- Gender -</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
			</div>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="hei" placeholder="Height (Inches)" required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="wei" placeholder="Weight (Pounds)" required="">
				</div>
			</div>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<select class="form-control" name="msta">
						<option>- Marital Status -</option>
						<option value="Single">Single</option>
						<option value="Married">Married</option>
						<option value="Divorced">Divorced</option>
					</select>
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<select class="form-control" name="bg">
					<option>- Blood Group -</option>
							<option value="A Positive">A Positive</option>
							<option value="A Negative">A Negative</option>
							<option value="A Unknown">A Unknown</option>
							<option value="B Positive">B Positive</option>
							<option value="B Negative">B Negative</option>
							<option value="B Unknown">B Unknown</option>
							<option value="AB Positive">AB Positive</option>
							<option value="AB Negative">AB Negative</option>
							<option value="AB Unknown">AB Unknown</option>
							<option value="O Positive">O Positive</option>
							<option value="O Negative">O Negative</option>
							<option value="O Unknown">O Unknown</option>
					</select>
				</div>
			</div>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<select class="form-control" name="dep">
								<option>- Department -</option>
											<option value="Orthopedic">Orthopedic</option>
											<option value="Dermatologist">Dermatologist</option>
											<option value="Dentist">Dentist</option>
											<option value="Pediatrics">Pediatrics</option>
											<option value="ENT">ENT</option>
											<option value="Radiologist">Radiologist</option>
											<option value="Neurologist">Neurologist</option>
											<option value="Ayurvedic">Ayurvedic</option>
										</select>
									</div></div>
			<div class="field-agileinfo-spc form-w3-agile-text">
				<textarea name="msg" placeholder="Remarks..."></textarea>
			</div>
			<div class="clear"></div>
			<!-- <h2 class="sub-heading-agileits">Emergency Contact Details</h2>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="Name" placeholder="First Name" required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="Name" placeholder="Last Name" required="">
				</div>
			</div>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="Relationship" placeholder="Relationship" required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="Phone no" placeholder="Phone Number" required="">
				</div>
			</div>
			 --><div class="radio-section">
				<h6>Taking any medications currently</h6>
				<ul class="radio-buttons-w3-agileits">
					<li>
						<input type="radio" id="a-option" name="selector1">
						<label for="a-option">Yes</label>
						<div class="check"></div>
					</li>
					<li>
						<input type="radio" id="b-option" name="selector1">
						<label for="b-option">No</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
			<!-- <div class="field-agileinfo-spc form-w3-agile-text">
				<textarea name="Message" placeholder="If you are taking please list them here.."></textarea>
			</div> -->
			<input type="submit" value="Submit">
			<input type="reset" value="Clear Form">
			<div class="clear"></div>
		</form>
		<!--// Form starts here -->
	</div>
	<!--copyright-->
	<div class="copyright">
		<p>&copy; 
		</p>
	</div>
	<!--//copyright-->
	<script type="text/javascript" src="js_O/jquery-2.2.3.min.js"></script>
	<!-- Calendar Js -->
	<script src="js_O/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar Js -->

</body>
</html>