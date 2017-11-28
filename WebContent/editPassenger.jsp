<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Train</title></head>
<body>

<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("select * from passenger where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
    String name=r.getString("name");
	String age=r.getString("age");
	String gender=r.getString("gender");
	String berthPreference=r.getString("berth_preference");
	String idCardType=r.getString("id_card_type");
	String idCardNumber=r.getString("id_card_number");
	String seniorCitizen=r.getString("senior_citizen");
    %>
 
    
<form action="updatePassenger.jsp" method="post" id="passengerForm" name="passengerForm";">
<input type="hidden" name="id" id="id" value="<%=id%>"/>
<table class="style1">
<caption>
<h3>
Edit Passenger
</h3></caption>
<tr>
<td>Name
</td>
<td>
<input name="name" type="text" class='style1' value="<%=name%>"/>
</td>
</tr>
<tr>
<td>Age
</td>
<td><input type="text" name="age" value="<%=age%>"/>
</td>
</tr>
<tr>

<td>Gender
</td>
<td><input name="gender" type="text" class='style1' id="gender" value="<%=gender%>"/>
</td>
</tr>
<tr>
<td>Berth Preference
</td>
<td><input name="berthPreference" type="text"  class='style1' id="berthPreference" value="<%=berthPreference%>"/>
</td>
</tr>
<tr>
<td>IdCard Type
</td>
<td><input name="idCardType" type="text"  class='style1' id="idCardType" value="<%=idCardType%>"/>
</td>
</tr>
<tr>
<td>
IdCard Number
</td>
<td>
<input type="text" name="idCardNumber" value="<%=idCardNumber%>"></input>
</td>
</tr>

<tr>
<td>Senior Citizen
</td>
<td><input type="text" name="seniorCitizen" class='style1' id="seniorCitizen" value="<%=seniorCitizen %>"/>
</td>
</tr>  <%} %>
<tr>
<td><input name="Update" type="submit" value="Update" class='style1'/>
</td>
</tr>
</table>
</form>

</body>
</html>
