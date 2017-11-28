<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<a href="addTrainPage.jsp">Add</a>
<tr><th>Train Number</th><th>Train Name</th><th>Type</th><th>Zone</th><th>Date From</th><th>Date To</th><th>Train From</th><th>Departure</th><th>Train To</th>
<th>Arrival</th><th>Duration</th><th>Halts</th><th>DepDays</th><th>Class</th><th>Distance</th><th>Speed</th><th>Return</th>
</tr>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("select * from train");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	
	int id=Integer.parseInt(r.getString("id"));
String trainNumber=r.getString("train_number");
String trainName=r.getString("train_name");
String trainType=r.getString("train_type");
String zone=r.getString("zone");
String dateFrom=r.getString("date_from");
String dateTo=r.getString("date_to");
String trainFrom=r.getString("train_from");
String departure=r.getString("departure");
String trainTo=r.getString("train_to");
String arrival=r.getString("arrival");
String duration=r.getString("duration");
String halts=r.getString("halts");
String depDays=r.getString("dep_days");
String classes=r.getString("class");
String distance=r.getString("distance");
String speed=r.getString("speed");
String trainReturn=r.getString("train_return"); %>

<tr><td><%=trainNumber%></td><td><%=trainName %></td><td><%=trainType%></td><td><%=zone%></td><td><%=dateFrom%></td><td><%=dateTo%></td>
<td><%=trainFrom %></td>	<td><%=departure %></td><td><%=trainTo %></td><td><%=arrival %></td><td><%= duration %></td><td><%=halts %></td><td><%=depDays %></td>
<td><%=classes%></td><td><%=distance %></td><td><%=speed %></td><td><%=trainReturn %></td>	
<td><a href="editTrain.jsp?id=<%=id %>">Edit</a></td><td><a href="deleteTrain.jsp?id=<%=id %>">Delete</a></td>
</tr>

<%} %>
</table>

</body>
</html>