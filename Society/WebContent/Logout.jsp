<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
	</head>
    <body class="login-bg">
   <%

        session.removeAttribute("Username");
        session.removeAttribute("Password");
        session.invalidate();
        %>
	<br><br>
	<br><br>
	<br><br>
        <div align="center">
		<h1>Logout was done successfully.</h1>
		<br/><br/>
		<br/><br/>
		<br/><br/>
		<h2><a href="SLogin.html">Login</a></h2>
	
        </div>
    </body>
</html>
