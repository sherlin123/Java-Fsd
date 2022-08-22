<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>List Of Airlines</title>
<meta charset="ISO-8859-1">

</head>
<body>
<div align="right">
<a href="AdminLogout">Admin Logout</a>
</div>
	List of Airline:
	<br>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3305/flyaway" user="root" password="Sherlin@18" />

	<sql:query dataSource="${snapshot}" var="result">
            SELECT * from flights ;
         </sql:query>

	<table border="1" >
		<tr>
			<th>ID</th>
			<th>Airline Name</th>
			
		</tr>

		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.fname}" /></td>
			</tr>
		</c:forEach>
	</table>
	<br>
  
  <br><br>
   <a href="Menu.jsp">Back to Menu </a>
</body>
</html>