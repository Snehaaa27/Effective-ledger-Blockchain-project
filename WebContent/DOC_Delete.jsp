<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	
	String qry = "Delete from 1_users where userid='"+pid+"'";
	int s = DB.getconnection().createStatement().executeUpdate(qry);
	if(s>0)
	{
		
		%>
			<script>
				alert('Record deleted..');
				window.location='HOME_DOC.jsp';
			</script>
		<%
		
	}else
	{
		
	%>
		<script>
		alert('Id not found..');
		window.location='HOME_DOC.jsp';
	</script>
	<%
	
	}
%>

</body>
</html>