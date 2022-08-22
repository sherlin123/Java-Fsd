<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>

<div style="text-align=center;border:3px solid black;width:35%;border-radius:20px;padding:20px" align="center">
<form action=UserRegistration method=post>
<table>
	<tr>
    <td>Email:<br></td>
    <td><input type="email" name=email /></td>
    </tr>
    <tr>
    <td>Password:<br></td>
    <td><input type="password" name=password/></td>
    </tr>
    <tr>
    <td>Name<br></td>
    <td><input type="text" name=name/></td>
    </tr>
    <tr>
    <tr>
    <td>Phone number:<br></td>
    <td><input type="text" name=phno/></td>
    </tr>
    <tr>
    <td>Aadhaar Number:<br></td>
    <td><input type="text" name=adno/></td>
    </tr>
    </table>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</body>
</html>