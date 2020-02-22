<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.util.*" %>
     <%@page import="java.text.SimpleDateFormat.*"%>
<%@ page import="javax.servlet.*,java.text.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%
   Date dNow = new Date( );
   SimpleDateFormat ft = 
   new SimpleDateFormat ("dd.MM.yyyy E");
   out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
%>
<input type="date" name="date" />
</body>
</html>