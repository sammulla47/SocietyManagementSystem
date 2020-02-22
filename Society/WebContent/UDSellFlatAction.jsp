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
int flatId=Integer.parseInt(request.getParameter("flatId"));
String societyName=request.getParameter("society");
String ownerName=request.getParameter("owner");
int price=Integer.parseInt(request.getParameter("price"));
String Details=request.getParameter("details");
int contact=Integer.parseInt(request.getParameter("contact"));

SellFlat se=new SellFlat();
se.setId(id);
se.setFlatId(flatId);
se.setSocietyName(societyName);
se.setOwnerName(ownerName);
se.setPrice(price);
se.setDetails(Details);
se.setContact(contact);


String result=SellFlatWorker.updateSellFlat(se);

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

SellFlat se=new SellFlat();
se.setId(id);

String result=SellFlatWorker.deleteSellFlat(se);

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