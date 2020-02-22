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
int securityP=Integer.parseInt(request.getParameter("security"));
int liftP=Integer.parseInt(request.getParameter("lift"));
int waterP=Integer.parseInt(request.getParameter("water"));
int cleaningP=Integer.parseInt(request.getParameter("clean"));
float discountA = Float.parseFloat(request.getParameter("dis"));
int discountP = Integer.parseInt(request.getParameter("disP"));
int Monthly = Integer.parseInt(request.getParameter("monthly"));
int Year = Integer.parseInt(request.getParameter("year"));



Bill b=new Bill();
b.setId(id);
b.setSocietyName(society);
b.setSecurityP(securityP);
b.setLiftP(liftP);
b.setWaterP(waterP);
b.setCleaningP(cleaningP);
b.setDiscountA(discountA);
b.setDiscountP(discountP);
b.setMonthly(Monthly);
b.setYear(Year);


String result=BillWorker.updateBill(b);

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

Bill b=new Bill();
b.setId(id);

String result=BillWorker.deleteBill(b);

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