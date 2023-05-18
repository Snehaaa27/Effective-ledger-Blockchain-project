<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "utility.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DB_UPDATE</title>
</head>
	
<body>
<%
String pid = (String)session.getAttribute("uid");  
String hid = request.getParameter("hid");
java.util.Date now = new java.util.Date();
String date=now.toString();
String DATE_FORMAT = "yyyy-MM-dd";
SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
String strDateNew = sdf.format(now) ;
String dt= strDateNew;


try{
	
	String sql1 = "SELECT pid,date FROM 4_patreq";
	ResultSet rs = DB.getconnection().createStatement().executeQuery(sql1);
	if(rs.next()){
		 response.sendRedirect("HOME_Pat.jsp?st=cns1");
	}else {
		String sql = "INSERT INTO 4_patreq(pid,hid,date) VALUES('"+pid+"','"+hid+"','"+dt+"') ";
	    int i1 = DB.getconnection().prepareStatement(sql).executeUpdate();
	    if(i1>0) {
	    	response.sendRedirect("HOME_Pat.jsp?st=cns2");	    	
	    }else {
	    	 response.sendRedirect("PT_Hosp.jsp?st=cs");
	    }
	}
	
	
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>