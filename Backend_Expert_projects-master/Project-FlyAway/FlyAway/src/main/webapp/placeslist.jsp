<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "2020";
String sql = "select * from places order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1>Places List</h1>
<table border="1">
	<tr>
		<th>code</th>
		<th>name</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>

