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
<title>Payment Finish Coding</title>
</head>
<body>

<%

	String nam = request.getParameter("name");
	String num  = request.getParameter("number");
	String exp = request.getParameter("exp");
	String cvv = request.getParameter("cvv");
	String amt = request.getParameter("amt");
	String pay = "Paid";
	
	String s = (String)session.getAttribute("em");  
	System.out.println(s);
	
	try{
		
		String q = "SELECT * from 1_users";
			
		String qry = "UPDATE 1_users SET pay='"+pay+"', amt='"+amt+"' where email='"+s+"'";
		int s1 = DB.getconnection().createStatement().executeUpdate(qry);
		
		if(s1>0)
		{
			%>
			
			<script>
				alert('Payment Successfull..')
				window.location='HOME_Pat.jsp';
			</script>	
			
			<%
		}
		else
		{
			%>
			<script>
				alert('Oops! Something went wrong..')
				window.location='HOME_Pat.jsp';
			</script>
			<%
		}
	}catch(Exception e)
	{
		e.printStackTrace();
	}

%>

</body>
</html>