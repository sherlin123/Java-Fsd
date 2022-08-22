<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Airline</title>
</head>
<body style="text-align:center">
<div align="right">
<a href="AdminLogout">Admin Logout</a>
</div>
<div style="border:3px solid black;width:35%;border-radius:40px;padding:20px" align="center">
<form action=InsertAirline method=post>
<table >
    <tr>
    <td>Airline ID :<br></td>
    <td><input type="text" name=id /></td>
    </tr>
    <tr>
    <td>Airline Name :<br></td>
    <td><input type="text" name=fname/></td>
    </tr>
</table>
<input type=submit value=submit /> <input type=reset />
</form>
</div>  <a href="Airline.jsp">Show airlines </a>
</body>
</html>