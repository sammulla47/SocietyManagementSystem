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
String rentId=request.getParameter("rid");
String renterPassword=request.getParameter("rentPassword");
int flatId=Integer.parseInt(request.getParameter("flatid"));
String society=request.getParameter("sname");
String entryDate=request.getParameter("entry");
String agreement=request.getParameter("agreement");
String leaveDate=request.getParameter("leavedate");


RentFlat rf=new RentFlat();
rf.setId(id);
rf.setRentId(rentId);
rf.setRenterPass(renterPassword);
rf.setFlatId(flatId);
rf.setSocietyName(society);
rf.setEntryDate(entryDate);
rf.setAgreement(agreement);
rf.setLeaveDate(leaveDate);



String result=RentFlatWorker.updateRentFlat(rf);

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

RentFlat rf=new RentFlat();
rf.setId(id);

String result=RentFlatWorker.deleteRentFlat(rf);

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