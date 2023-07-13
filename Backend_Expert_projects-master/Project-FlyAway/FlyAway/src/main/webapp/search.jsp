<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<title>Available Flights</title>
<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "2020";
String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1>Available Flights :</h1>
<table border="1">
	<tr>
		<th>name</th>
		<th>airline</th>
		<th>way</th>
		<th>price</th>
		<th>source</th>
		<th>destination</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
	</tr>
	<%
	}
	%>
</table>
</br>
<form action="customerdetails.jsp" method="post">
	No of Persons <input type="number" name="no of persons" required></br>
	</br> <input type="submit" value="Book Ticket">

</form>

