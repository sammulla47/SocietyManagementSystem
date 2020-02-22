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
int bookId=Integer.parseInt(request.getParameter("book"));
String booking=request.getParameter("booking");
String details=request.getParameter("details");
String dateOfBooking=request.getParameter("datebook");
String dateBooked=request.getParameter("datebooked");
String startTime=request.getParameter("start");
String endTime=request.getParameter("end");

Facilities f=new Facilities();
f.setSocietyName(society);
f.setBookingId(bookId);
f.setBooking(booking);
f.setDetails(details);
f.setDateOfBooking(dateOfBooking);
f.setDateBook(dateBooked);
f.setStartTime(startTime);
f.setEndTime(endTime);

String result=FacilitiesWorker.addFacilities(f);

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