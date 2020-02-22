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

String rentId=request.getParameter("rid");
String renterPassword=request.getParameter("rentPassword");
int flatId=Integer.parseInt(request.getParameter("flatid"));
String society=request.getParameter("society");
String entryDate=request.getParameter("entry");
String agreement=request.getParameter("agreement");
String leaveDate=request.getParameter("leavedate");

RentFlat r=new RentFlat();
r.setRentId(rentId);
r.setRenterPass(renterPassword);
r.setFlatId(flatId);
r.setSocietyName(society);
r.setEntryDate(entryDate);
r.setAgreement(agreement);
r.setLeaveDate(leaveDate);


String result=RentFlatWorker.addRentFlat(r);

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