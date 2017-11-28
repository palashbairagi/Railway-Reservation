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
<a href="addPassengerPage.jsp">Add</a>
<tr><th>Name</th><th>Age</th><th>Gender</th><th>BerthPreference</th><th>IdCard Type</th><th>IdCard Number</th><th>Senior Citizen</th>
</tr>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("select * from passenger");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	
	int id=Integer.parseInt(r.getString("id"));
	 String name=r.getString("name");
		String age=r.getString("age");
		String gender=r.getString("gender");
		String berthPreference=r.getString("berth_preference");
		String idCardType=r.getString("id_card_type");
		String idCardNumber=r.getString("id_card_number");
		String seniorCitizen=r.getString("senior_citizen"); %>

<tr><td><%=name%></td><td><%=age %></td><td><%=gender%></td><td><%=berthPreference%></td><td><%=idCardType%></td><td><%=idCardNumber%></td>
<td><%=seniorCitizen %></td>	
<td><a href="editPassenger.jsp?id=<%=id %>">Edit</a></td><td><a href="deletePassenger.jsp?id=<%=id %>">Delete</a></td>
</tr>

<%} %>
</table>

</body>
</html>