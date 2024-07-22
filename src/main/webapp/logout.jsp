<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
    // Get the current session and invalidate it to log the user out
    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <h1>You have been successfully logged out.</h1>
    <p><a href="login.jsp">Login Again</a></p>
</body>
</html>
