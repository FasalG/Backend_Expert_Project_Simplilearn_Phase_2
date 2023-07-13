<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try {
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway";
	String user = "root";
	String pass = "2020";
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con
	.prepareStatement("select username,password from login where username=? and password=?");
	st.setString(1, username);
	st.setString(2, password);
	ResultSet rs = st.executeQuery();
	if (rs.next()) {
		response.sendRedirect("adminhome.jsp");
	} else {
		out.println("<h1><p style=color:red>Invalid credentials!</P></h1>");
	}
} catch (Exception e) {
	out.println(e);
}
%>