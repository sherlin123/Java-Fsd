<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Pay Through UPI</h2>
<div style="border:2px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=BookFlight.jsp method=post>
	<label for=pass>Enter UPI PIN :-</label> <input type="password" name=pass id=pass /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</body>
</html>