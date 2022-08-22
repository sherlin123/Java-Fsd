<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("UserPage.jsp");
	}
%>
<br>
ENTER DETAIL FOR BOOKING:
<br>
<div style="text-align:center;border:5px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=BookFlight method=post>
	<table >
    <tr>
    <td><label for=email>Email</label><br></td>
    <td><input type="email" name=email id=email /></td>
    </tr>
    <tr>
    <td><label for=pass>Password</label><br></td>
    <td><input type="password" name=password id=pass /></td>
    </tr>   
    <tr>
    <td><input type=submit value=submit /></td>
    <td><input type=reset /></td>
    </tr>
    </table>
</form>
</div>
<br><br>
<a href="PaymentMethod.jsp">Click to Pay</a>
<br><br>
</body>
</html>