<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.society.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
</head>
<body>
<%

String society=request.getParameter("society");
String userName=request.getParameter("user");
int flatId=Integer.parseInt(request.getParameter("flatid"));
String details=request.getParameter("details");
String dateP=request.getParameter("datep");
String images=request.getParameter("images");


Help h=new Help();
h.setSocietyName(society);
h.setUserName(userName);
h.setFlatId(flatId);
h.setDetails(details);
h.setDatePosted(dateP);
h.setImage(images);


String result=HelpWorker.addHelp(h);

if(result.equals(Results.SUCCESS))
{
	response.sendRedirect("success.jsp");
}
else
{
	response.sendRedirect("failure.jsp");
}
%>
</body>
</html>