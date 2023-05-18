<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!-- BASIC FOOTER STYLE CODE	
		<p>© 2017 Deft. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
-->

<!-- NO USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">

		<p>&copy; No Users were Logged in - <a href="index.jsp">Go to HomePage</a> </p>

</c:if>

<!-- ADMIN MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">

	<p>&copy; ADMIN Logged in</p>
	
</c:if>

<!-- COMPANY MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==2}">

	<p>&copy; HOSPITAL USERS Logged in</p>
	
</c:if>
<!-- MANUFACTURING UNIT MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">

	<p>&copy; DOCTOR Logged in</p>
	
</c:if>
<!-- EMPLOYEE MENU-->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==5}">

	<p>&copy; PATIENT Logged in </p>
	
</c:if>
