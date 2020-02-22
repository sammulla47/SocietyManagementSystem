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
String username=request.getParameter("user");
int flatId=Integer.parseInt(request.getParameter("flatid"));
String details=request.getParameter("details");
String dateP=request.getParameter("datep");
String images=request.getParameter("images");


Help h=new Help();
h.setId(id);
h.setSocietyName(society);
h.setFlatId(flatId);
h.setUserName(username);
h.setDetails(details);
h.setDatePosted(dateP);
h.setImage(images);


String result=HelpWorker.updateHelp(h);

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

Help h=new Help();
h.setId(id);

String result=HelpWorker.deleteHelp(h);

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