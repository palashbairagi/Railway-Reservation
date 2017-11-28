<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*;" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Train</title>
</head>
<body>

    <h1>Trains</h1>
     
  
<form action="addTrain.jsp" method="get" name="trainForm" class='style1'>
<table>
<caption>
<h3>Add Train</h3>
</caption>
<tr>
<td >Train Number
</td>
<td>
<input name="trainNumber" type="text"  class='style1'/></td>
</tr>
<tr>
<td>
Train Name
</td>
<td><input type="text" name="trainName"/></td>
</tr>
<tr>
<td>Train Type
</td>
<td>
<select name="trainType" class='style1'>
<option value="Passenger">Passenger</option>
<option value="Intercity">Intercity</option>
<option value="Light Rail">Light Rails</option>
<option value="Rapid Transit">Rapid Transit</option>
<option value="Computer Rails">Computer Rails</option>
</select>
</td>
</tr>
<tr>
<td>zone
</td>
<td><input name="zone" id="zone" type="text" max="60" min="10" class='style1'/>
</td>
</tr>
<tr>
<td>From
</td>
<td><input name="dateFrom" id="from" type="text" size="20" maxlength="20" class='style1'/>
</td>
</tr>
<tr>
<td>To
</td>
<td><input name="dateTo" id="to" type="text" size="20" maxlength="20" class='style1'/>
</td>
</tr>
<tr>
<td>Train From</td>
<td><input type="text" name="trainFrom"/></td>
</tr>
<tr>
<td>Departure
</td>
<td><input type="text" name="departure" id="departure" class='style1'/>
</td>
</tr>
<tr>
<td>Train To
</td>
<td><input type="text" name="trainTo"/></td>
</tr>
<tr>
<td>Arrival
</td>
<td><input type="text" name="arrival"  id="arrival" class='style1'/>  
</td>
</tr>
<tr>
<td>
Duration
</td>
<td>
<input type="text" name="duration" class="style1"/>
</td>
</tr>
<tr>
<td>
Halts
</td>
<td>
<input type="text"  name="halts" class="style1"/>
</td>
</tr>
<tr>
<td>Dep Days
</td>
<td>
<input name="depDays" type="text"/></td>
</tr>
<tr>
<td>
Class
</td>
<td>
<input type="text" name="classes"/>
</td>
</tr>
<tr>
<td>
distance
</td>
<td>
<input type="text" name="distance"/>
</td>
</tr>
<tr>
<td>
Speed
</td>
<td>
<input type="text" name="speed"/>
</td>
</tr>
<tr>
<td>
Return
</td>
<td>
<input type="text" name="trainReturn"/>
</td>
</tr>

<tr>
<td>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("select * from train");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id =r.getInt("id");
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
	String trainReturn=r.getString("train_return");
	%>
<%} %>
</td>
</tr>
<tr>
<td><input name="submit" type="submit" value="Add" class='style1'/>
</td>
<td><input name="reset" type="reset" value="Clear" class='style1'/>
</td>
</tr>
</table>
</form>
</body>
</html>
