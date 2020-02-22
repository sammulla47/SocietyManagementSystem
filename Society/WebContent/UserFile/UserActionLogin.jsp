<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.society.*"%>
<html>
<body>
<%
Flat fa = new Flat();
		fa.setUserId(request.getParameter("UserId"));
		fa.setUserPass(request.getParameter("Password"));
		fa.setSocietyName(request.getParameter("SName"));

		String result = FlatWorker.VerifyFlat(fa);
		if(result.equals(Results.SUCCESS))
		{
			session.setAttribute("UserId", fa.getUserId());
			session.setAttribute("SName", fa.getSocietyName());
			response.sendRedirect("index.jsp");
		}else{
%>
		<script>
		function f1(){
			window.alert("Incorrect login credentials.");
			window.location="UserLogin.html";
		}
		window.f1();
		</script><%
		}
%>
</body>
</html>

</body>
</html>