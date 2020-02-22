<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*" %>
    <%@ page import="javax.servlet.*,java.text.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bill Main
</title>
</head>
<body>
<%
    	String Username = (String) session.getAttribute("Username");
		String SocietyName = (String) session.getAttribute("SName");
    	if(Username == null){
%>
    		<script>
    		function f1(){
    			window.alert("Please Login first!");
    			window.location="../HTML/index.jsp";
    		}
    		window.f1();
    		
<%
    	}
    	else{ 	
%>
<table width="600" border="4" align="center">
  <tr>
    <td><div align="center">
      <h1><strong> BILL MAIN</strong>
      </h1>
      <table width="600" border="4">
        <tr>
          <th width="250" scope="row"><div align="left">Society Name:<%= request.getSession().getAttribute("SName") %></div></th>
          <td width="150"><strong>Current period: Current Year </strong></td>
        </tr>
        <tr>
          <th scope="row"><div align="left">User Name:<%= request.getSession().getAttribute("Username") %></div></th>
          <td><strong>Current Date:<% Date dNow = new Date( );
  			 SimpleDateFormat ft = new SimpleDateFormat ("dd.MM.yyyy E");
  			 out.print("&nbsp;"+ft.format(dNow));
			%></strong></td>
        </tr>
      </table><table width="600" border="4">
  <tr>
    <th width="236" scope="row">&nbsp;</th>
    <td width="114"><div align="center">Rupees</div></td>
    <td width="86"><div align="center">Discount %</div></td>
    <td width="130"><div align="center">Total</div></td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Society Price</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Lift Price</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Water Price</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Cleaning Price</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    
    
    
  </tr>
  <tr>
    <th scope="row"><div align="left">Monthly Total </div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Yearly Total</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row"><div align="left">Discount Percentage</div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    
    
    
  </tr>
  <tr>
    <th scope="row"><div align="left">Discount Amount </div></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    
    
    
    
  </tr>
  <tr>
    <th scope="row">Yearly Amount With Discount</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    
    
<%
    	}
%>    
  </tr>
</table>

    </div></td>
  </tr>
  
</body>
</html>
    