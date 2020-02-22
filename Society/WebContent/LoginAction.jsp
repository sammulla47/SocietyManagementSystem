<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.society.*"%>
<html>
<body>
<%
SocietyRegistration sor = new SocietyRegistration();
		sor.setSID(request.getParameter("UserName"));
		sor.setSPass(request.getParameter("Password"));
		sor.setSocietyName(request.getParameter("SName"));

		String result = SocietyRegistrationWorker.VerifySocietyRegistration(sor);
		if(result.equals(Results.SUCCESS))
		{
			session.setAttribute("Username", sor.getSID());
			session.setAttribute("SName", sor.getSocietyName());
			response.sendRedirect("index.jsp");
		}else{
%>
		<script>
		function f1(){
			window.alert("Incorrect login credentials.");
			window.location="SLogin.html";
		}
		window.f1();
		</script><%
		}
%>
</body>
</html>

</body>
</html>