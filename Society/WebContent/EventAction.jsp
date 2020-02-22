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
String eventId=request.getParameter("event");
String topic=request.getParameter("topic");
String date=request.getParameter("date");
String startTime=request.getParameter("start");
String endTime=request.getParameter("end");
String place=request.getParameter("place");



Event ev=new Event();
ev.setSocietyName(society);
ev.setEventId(eventId);
ev.setTopic(topic);
ev.setEventDate(date);
ev.setStartTime(startTime);
ev.setEndTime(endTime);
ev.setPlace(place);

String result=EventWorker.addEvent(ev);

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