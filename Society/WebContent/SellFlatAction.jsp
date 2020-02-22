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


int flatId=Integer.parseInt(request.getParameter("flatId"));
String societyName=request.getParameter("society");
String ownerName=request.getParameter("owner");
int price=Integer.parseInt(request.getParameter("price"));
String Details=request.getParameter("details");
int contact=Integer.parseInt(request.getParameter("contact"));


SellFlat se=new SellFlat();
se.setFlatId(flatId);
se.setSocietyName(societyName);
se.setOwnerName(ownerName);
se.setPrice(price);
se.setDetails(Details);
se.setContact(contact);


String result=SellFlatWorker.addSellFlat(se);

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