<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Debit Card</title>
</head>
<body>
<h2>Pay through Debit Card</h2>
<div style="border:2px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=BookFlight.jsp method=post>
	<label for=cardno>Card Number :-</label> <input type="text" name=cardno id=cardno /><br><br>
	<label for=pass>cvv :-</label> <input type="password" name=password id=pass /><br><br>
	<label for=name>Card Holder Name :-</label> <input type="text" name=name id=name /><br><br>
	<label for=datem>Expiry Date and Month :-</label> <input type="text" name=datem id=datem /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</body>
</html>