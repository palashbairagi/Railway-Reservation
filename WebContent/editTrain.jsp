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
PreparedStatement stmt=con.prepareStatement("select * from train where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
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
 
    
<form action="updateTrain.jsp" method="post" id="trainForm" name="trainForm";">
<input type="hidden" name="id" id="id" value="<%=id%>"/>
<table class="style1">
<caption>
<h3>
Edit Train
</h3></caption>
<tr>
<td>Train Number
</td>
<td>
<input name="trainNumber" type="text" class='style1' value="<%=trainNumber%>"/>
</td>
</tr>
<tr>
<td>Train Name
</td>
<td><input type="trainName" type="text" value="<%=trainName%>"/>
</td>
</tr>
<tr>
<td>Type
</td>
<td>
<select name="trainType" class='style1' id="trainType">
<%
if(trainType.equals("Passenger"))
{
%>
<option value="Passenger" selected="selected">Passenger</option>
<option value="Intercity">Intercity</option>
<option value="Rapid Transit">Rapid Transit</option>
<option value="Light Rail">Light Rail</option>
<%}
else if(trainType.equals("Intercity"))
{
%>
<option value="Passenger" selected="selected">Passenger</option>
<option value="Intercity">Intercity</option>
<option value="Rapid Transit">Rapid Transit</option>
<option value="Light Rail">Light Rail</option><%}
else if(trainType.equals("Rapid Transit"))
{
%>
<option value="Passenger" selected="selected">Passenger</option>
<option value="Intercity">Intercity</option>
<option value="Rapid Transit">Rapid Transit</option>
<option value="Light Rail">Light Rail</option>
<%}
else if(trainType.equals("Light Rail"))
{
%>
<option value="Passenger" selected="selected">Passenger</option>
<option value="Intercity">Intercity</option>
<option value="Rapid Transit">Rapid Transit</option>
<option value="Light Rail">Light Rail</option>
<%} %>
</select>
</td>
</tr>

<td>zone
</td>
<td><input name="zone" type="text" class='style1' id="zone" value="<%=zone%>"/>
</td>
</tr>
<tr>
<td>From
</td>
<td><input name="dateFrom" type="calendar"  class='style1' id="dateFrom" value="<%=dateFrom%>"/>
</td>
</tr>
<tr>
<td>To
</td>
<td><input name="dateTo" type="calendar"  class='style1' id="dateTo" value="<%=dateTo %>"/>
</td>
</tr>
<tr>
<td>
Train From
</td>
<td>
<input type="text" name="trainFrom" value="<%=trainFrom%>"></input>
</td>
</tr>

<tr>
<td>Departure
</td>
<td><input type="text" name="departure" class='style1' id="departure" value="<%=departure %>"/>
</td>
</tr>
<tr>
<td>Train To</td>
<td><input type="text" name="trainTo" value="<%=trainTo %>"/></td>
</tr>
<tr>
<td>Arrival
</td>
<td><input type="text" name="arrival" class='style1' id="arrival" value="<%=arrival%>"/>  
</td>
</tr>
<tr>
<td>
Duration
</td>
<td>
<input type="text" name="duration" value="<%=duration %>" class="style1"/>
</td>
</tr>
<tr>
<td>
halts
</td>
<td>
<input type="text" name="halts" value="<%=halts %>" class="style1"/>
</td>
</tr>
<tr>
<td>
Dep Days
</td>
<td>
<input type="text" name="depDays" value="<%=depDays%>"/>
</td>
</tr>

<tr>
<td>class</td><td><input type="text" name="classes" value="<%=classes%>"/></td></tr>

<tr>
<td>distance</td>
<td>
<input type="text" name="distance" value="<%=distance %>"/>
</td></tr>

<tr>
<td>speed</td>
<td><input type="text" name="speed" value="<%=speed %>"/></td></tr>

<tr>
<td>TrainReturn</td>
<td><input type="text" name="trainReturn" value="<%=trainReturn%>"/></td>
</tr>
  <%} %>
<tr>
<td><input name="Update" type="submit" value="Update" class='style1'/>
</td>
</tr>
</table>
</form>

</body>
</html>
