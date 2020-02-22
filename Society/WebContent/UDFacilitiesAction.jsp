<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.society.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<%
String action=request.getParameter("action");

if(action.equalsIgnoreCase("update"))
{
int id=Integer.parseInt(request.getParameter("Id"));
String society=request.getParameter("society");
int bookId=Integer.parseInt(request.getParameter("book"));
String booking=request.getParameter("booking");
String details=request.getParameter("details");
String dateOfBooking=request.getParameter("datebook");
String dateBooked=request.getParameter("datebooked");
String startTime=request.getParameter("start");
String endTime=request.getParameter("end");


Facilities f=new Facilities();
f.setId(id);
f.setSocietyName(society);
f.setBookingId(bookId);
f.setBooking(booking);
f.setDetails(details);
f.setDateOfBooking(dateOfBooking);
f.setDateBook(dateBooked);
f.setStartTime(startTime);
f.setEndTime(endTime);



String result=FacilitiesWorker.updateFacilities(f);

if(result.equals(Results.SUCCESS))
{
response.sendRedirect("success.jsp");
}
else
{
response.sendRedirect("failure.jsp");
}

}
else
{
int id=Integer.parseInt(request.getParameter("Id"));

Facilities f=new Facilities();
f.setId(id);

String result=FacilitiesWorker.deleteFacilities(f);

if(result.equals(Results.SUCCESS))
{
response.sendRedirect("success.jsp");
}
else
{
response.sendRedirect("failure.jsp");
}
}
%>
</body>
</html>