<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.society.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<form method="POST" action="UDFlatAction.jsp" enctype="multipart/form-data">
		<%
			String i = request.getParameter("flatid");
			int flatid = Integer.parseInt(i);

			Flat fl = FlatWorker.getFlatById(flatid);
		%>

		<center>
			SocietyName:<input type="text" name="society"
				value="<%=fl.getSocietyName()%>"> <br>
			<br> FlatID: <input type="text" name="flatid"
				value="<%=fl.getFlatId()%>"> <br>
			<br> OwnerName: <input type="text" name="owner"
				value="<%=fl.getOwnerName()%>"> <br>
			<br> PhoneNumber: <input type="text" name="phone"
				value="<%=fl.getPhoneNumber()%>"> <br>
			<br> Email: <input type="email" name="email"
				value="<%=fl.getEmail()%>"> <br>
			<br> Image: <input type="file" name="images"
				value="<%=fl.getImage()%>"> <br>
				 Date Of Entry In Society: <input type="date" name="entry"
				value="<%=fl.getEntryDate()%>"> <br>
			<br> UserId: <input type="text" name="userid"
				value="<%=fl.getUserId()%>"> <br>
			<br> UserPass: <input type="text" name="userPass"
				value="<%=fl.getUserPass()%>"> <br>
				
			<br><font size="3" color="red">Note:- Befor It On "<%=fl.getCurrent()%>" Now Can Update Click On Radio Button</font>
			 <br>Current Status:<input type="radio" name="current" value="Owner Live"
						checked> Owner live <input type="radio" name="current"
						value="On Rent"> On Rent <input type="radio"
						name="current" value="Other"> Other
				<br>
			<br> <input type="hidden" name="Id" value="<%=fl.getId()%>">
			<br>
			<br> <input type="submit" name="action" value="Update">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="submit" name="action"	value="Delete">
		</center>
	</form>
</body>
</html>