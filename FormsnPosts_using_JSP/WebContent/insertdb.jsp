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
			if(request.getParameter("confirm").equals("Accept"))
			{
				String query = "insert into posts(title,message) values (?,?);";
				try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
					PreparedStatement st = con.prepareStatement(query);
					System.out.println();
					st.setString(1,session.getAttribute("title").toString());
					st.setString(2,session.getAttribute("message").toString());
					int i = st.executeUpdate();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
			response.sendRedirect("index.jsp");
		%>
</body>
</html>