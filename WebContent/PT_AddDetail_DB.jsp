<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<%
String pid=(String)session.getAttribute("pid");
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
	String qry = "UPDATE 1_users SET dob='"+dob+"', gen='"+gen+", hei='"+hei+"', wei='"+wei+"', msta='"+msta+"', bg='"+bg+"', dep='"+dep+"', msg='"+msg+"', medi='"+selector1+"' WHERE pid='"+pid+"'";
	int i = DB.getconnection().prepareStatement(qry).executeUpdate();
	if(i>0){
		response.sendRedirect("HOME_Hosp.jsp");
	}else{
		response.sendRedirect("PT_AddDetail.jsp?st=nt");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
