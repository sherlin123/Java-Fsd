<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>
<div style="text-align=center;border:3px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=ForgotPassword method=post>
Email :<input type="email" name=email/><br><br>
New Password :<input type="password" name=password/><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</body>
</html>