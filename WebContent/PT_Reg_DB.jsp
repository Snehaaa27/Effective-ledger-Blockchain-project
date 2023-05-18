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
<title>Patient Register code</title>
</head>
<body>

<%

String pid=(String)session.getAttribute("pid");
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String gen=request.getParameter("gen");
String hei=request.getParameter("hei");
String wei=request.getParameter("wei");
String msta=request.getParameter("msta");
String bg=request.getParameter("bg");
String dep=request.getParameter("dep");
String msg=request.getParameter("msg");
String selector1=request.getParameter("selector1");

ResultSet rs = null; 
Statement st = null;
try {
	
	String sql = "INSERT INTO 6_patreg(name,dob,gen,hei,wei,msta,bg,dep,msg,selector1) VALUES('"+name+"','"+dob+"','"+gen+"','"+hei+"','"+wei+"','"+msta+"','"+bg+"','"+dep+"','"+msg+"','"+selector1+"') ";
    
	int i1 = DB.getconnection().prepareStatement(sql).executeUpdate();
    
	if(i1>0) {
	
		%>
		
			<script>
			
			alert('Patient Details Registered..!');
			window.location="HOME_Pat.jsp?st=cns2";
			
			</script>
			
		<%
		
	
	}else{
		%>
		<script>
			alert('Oops!! Something gone wrong');
			window.location="HOME_Pat.jsp";
		</script>
	<%
		
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>