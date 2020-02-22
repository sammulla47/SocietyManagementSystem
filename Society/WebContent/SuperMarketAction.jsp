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
		String society = request.getParameter("society");
	    String name = request.getParameter("name");
	    String contact = request.getParameter("contact");
	    String address = request.getParameter("address");
		int pincode = Integer.parseInt(request.getParameter("pincode"));
		String city = request.getParameter("city");
		String openTime = request.getParameter("openT");
		String closeTime = request.getParameter("closeT");
		String openDay = request.getParameter("openD");
		String closeDay = request.getParameter("closeD");

		SuperMarket sm = new SuperMarket();
		sm.setSocietyName(society);
		sm.setName(name);
		sm.setContact(contact);
		sm.setAddress(address);
		sm.setPincode(pincode);
		sm.setCity(city);
		sm.setOpenTime(openTime);
		sm.setClosedTime(closeTime);
		sm.setOpenDay(openDay);
		sm.setClosedDay(closeDay);

		String result = SuperMarketWorker.addSuperMarket(sm);

		if (result.equals(Results.SUCCESS)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("failure.jsp");
		}
	%>
</body>
</html>