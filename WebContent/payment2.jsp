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
<title>Payment coding</title>
</head>
<body>
<%
	String em = request.getParameter("Email");
	String pw = request.getParameter("Password");
	
	try{
		
		String qry = "SELECT * FROM 1_users where email='"+em+"' and pass='"+pw+"'";
		ResultSet s = DB.getconnection().createStatement().executeQuery(qry);
		
		
		
		
		if(s.next())
			
		{
			int i=1;
			String s1 = s.getString(17);
			session.setAttribute("usid", 1);
			
			if(i>0)
			{
				System.out.println("Email"+em);
				session.setAttribute("em",em);
				%>
				<input type="hidden" name="email" value=<%=em %>> 
				<script>
				alert('Login Accessed..!');
				window.location='payment.jsp';
				</script>
					
				<%
			}else
			{
				%>
				<script>
				alert('Oops! Data not found..');
				window.location='payment1.jsp';
				</script>
				
			<%
			}
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
%>

</body>
</html>