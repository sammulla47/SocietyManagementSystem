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
		int securityP = Integer.parseInt(request.getParameter("security"));
		int liftP = Integer.parseInt(request.getParameter("lift"));
		int waterP = Integer.parseInt(request.getParameter("water"));
		int cleaningP = Integer.parseInt(request.getParameter("clean"));
		float discountA = Float.parseFloat(request.getParameter("dis"));
		int discountP = Integer.parseInt(request.getParameter("disp"));
		int Monthly = Integer.parseInt(request.getParameter("monthly"));
		int Year = Integer.parseInt(request.getParameter("year"));
		
		
		Bill b = new Bill();
		b.setSocietyName(society);
		b.setSecurityP(securityP);
		b.setLiftP(liftP);
		b.setWaterP(waterP);
		b.setCleaningP(cleaningP);
		b.setDiscountA(discountA);
		b.setDiscountP(discountP);
		b.setMonthly(Monthly);
		b.setYear(Year);
		
		String result = BillWorker.addBill(b);

		if (result.equals(Results.SUCCESS)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("failure.jsp");
		}
	%>
</body>
</html>