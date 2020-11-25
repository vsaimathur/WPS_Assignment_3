<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		session.setAttribute("title",request.getParameter("title"));
		session.setAttribute("message",request.getParameter("message"));
	%> 
	<h3 style = "text-align : center;">CONFIRMATION POST PAGE!</h3>
	Title : <%=request.getParameter("title") %> <br>
	Message : <br>
	<%= request.getParameter("message") %>
	<br>
	<form action = "insertdb.jsp">
		<input type = "radio" value = "Accept" name = "confirm" id = "accept"> Accept 
		<input type = "radio" value = "Continue" name = "confirm" id = "continue"> Continue <br>
		<input type = "submit" value = "submit">
	</form>
</body>
</html>