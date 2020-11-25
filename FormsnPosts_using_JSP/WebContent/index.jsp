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
	<h3 style= "text-align : center;">CREATE A POST!</h3>
	<form action = "checkinsertdb.jsp" method = "post">
		Title : <input type = "text" name = "title">	<br>
		Message : <br> 
		<textarea rows="4" cols="50" name = "message"></textarea>	
		<br>
		<input type = "submit" value = "Preview">
	</form>
	
	<br><br>
	
	<h3 style= "text-align : center;">LIST OF POSTS!</h3>
	<ul>
		<%
			String query = "select * from posts";
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(query);
				while(rs.next())
				{
					out.println("<li><b>Title</b> : " + rs.getString(2) + "<br><b>Message</b> : <br> " + rs.getString(3) + "<br> " + rs.getString(4) + "</li>");
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		%>
	</ul>
</body>
</html>