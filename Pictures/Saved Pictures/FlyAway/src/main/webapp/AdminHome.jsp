<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<div align="right">
<a href="AdminLogout">Admin Logout</a>
</div>
<br>
<h1>Insert New Flight Details</h1>
<div style="text-align:center;border:2px solid black;width:35%;border-radius:20px;padding:20px;" align="center">
<form action=InsertFlight method=post style="display=inline-block">
<table>
 	<tr>
    <td>ID :<br></td>
    <td><input type="text" name=id /></td>
    </tr>
    <tr>
    <td>Name :<br></td>
    <td><input type="text" name=fname/></td>
    </tr>
    <tr>
    <td>From :<br></td>
    <td><input type="text" name=from /></td>
    </tr>
    <tr>
    <td>To :<br></td>
    <td><input type="text" name=to /></td>
    </tr>
    <tr>
    <td>Departure Date :<br></td>
    <td><input type="date" name=departure /></td>
    </tr>	
    <tr>
    <td>Time :<br></td>
    <td><input type="time" name=time /></td>
    </tr>	
    <tr>
    <td>Price :<br></td>
    <td><input type="text" name=price /></td>
    </tr>
</table> 
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
<%
	String message=(String)session.getAttribute("message");
	if(message!=null){
%>
<p style="color:silver;"><%=message %></p>
<%
		session.setAttribute("message", null);
	}
%>
</body>
</html>
