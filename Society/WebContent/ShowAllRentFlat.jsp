<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.society.*,java.util.*"%>
<html>
<head>
<title>ShowAllRentFlat</title>
</head>
<body>
	<%
		List<RentFlat> List = RentFlatWorker.getAllRentFlat();
	%>
	<center>
		<marquee>
			<b>**Click on ID no. which you want to Update or Delete**</b>
		</marquee>
		<table border="2" cellspacing="1">
			<tr>
				<th>Id</th>
				<th>RId</th>
				<th>RPass</th>
				<th>FlatId</th>
				<th>SName</th>
				<th>EntryDate</th>
				<th>Agreement</th>
				<th>LeaveDate</th>
			</tr>
			<%
				for (RentFlat rf : List) {
					int id = rf.getId();
			%>
			<tr>
				<th><a href="ShowByRentFlatId.jsp?id=<%=id%>"><%=rf.getId()%></a></th>
				<th><%=rf.getRentId()%></th>
				<th><%=rf.getRenterPass()%></th>
				<th><%=rf.getFlatId()%></th>
				<th><%=rf.getSocietyName()%></th>
				<th><%=rf.getEntryDate()%></th>
				<th><%=rf.getAgreement()%></th>
				<th><%=rf.getLeaveDate()%></th>
			</tr>
			<%
				}
			%>
		</table>
</centre>
</body>
</html>