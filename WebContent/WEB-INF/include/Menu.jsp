<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!-- 
			BASIC MENU STYLE CODE :	
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="#about" class="scroll">About</a></li>
					<li><a href="#gallery" class="scroll">Gallery</a></li>
					<li><a href="#team" class="scroll">Team</a></li>
					<li><a href="#events" class="scroll">Events</a></li>
					<li><a href="#mail" class="scroll">Mail Us</a></li>
-->

<!-- NO USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">

	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>

<!-- ADMIN MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">

	<li class="active"><a href="HOME_Admin.jsp">Home</a></li>
	<li><a href="AD_Users.jsp">Users</a></li>
	<li><a href="AD_Hosp.jsp">Hospital</a></li>
	<li><a href="AD_Doc.jsp">Doctor</a></li>
	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>

<!-- HOSPITAL MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==2}">

	<li class="active"><a href="HOME_Hosp.jsp">Home</a></li>
	<li><a href="HO_AddDoc.jsp">Add Doctors</a></li>
	<li><a href="HO_Doctors.jsp">Doctors List</a></li>
	<li><a href="HO_form.jsp">Patient List</a></li>
	<li><a href="HO_View.jsp">View</a></li>
	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>
 
<!-- DOCTORS MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">

	<li class="active"><a href="HOME_Doc.jsp">Home</a></li>
	<li><a href="DOC_form.jsp">Patients</a></li>
	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>

<!-- GEN PRAC MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==4}">

	<li class="active"><a href="HOME_Genprac.jsp">Home</a></li>
	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>

<!-- PATIENT MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==5}">

	<li class="active"><a href="HOME_Patient.jsp">Home</a></li>
	<li><a href="PT_Hosp.jsp">Hospitals</a></li>
	<li><a href="PT_UsersData.jsp">My Data</a></li>
	<li><a href="payment1.jsp">Transaction</a></li>
	<li><a href="Logout.jsp?st=logout">Logout</a></li>
	
</c:if>
