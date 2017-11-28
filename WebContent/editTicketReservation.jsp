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
PreparedStatement stmt=con.prepareStatement("select * from ticket_reservation where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String trainName=r.getString("train_name");
	String trainNo=r.getString("train_no");
	String classes=r.getString("class");
	String dateOfJourney=r.getString("date_of_journey");
	String journeyFrom=r.getString("journey_from");
	String journeyTo=r.getString("journey_to");
	String boardingPoint=r.getString("boarding_point");
	String reservationUpto=r.getString("reservation_upto");
	String quota=r.getString("quota");
    %>
 
   
<form action="updateTicketReservation.jsp" method="post" id="ticketReservationForm" name="ticketReservationForm";">
<input type="hidden" name="id" id="id" value="<%=id%>"/>
<table class="style1">
<caption>
<h3>
Edit Ticket Reservation
</h3></caption>
<tr>
<td>Train Name
</td>
<td><input name="trainName" type="text" value="<%=trainName%>"/>
</td>
</tr>
<tr> 
<td>Train Number
</td>
<td>
<input name="trainNo" type="text" value="<%=trainNo%>"/>
</td>
</tr>
<tr>
<td>Class
</td>
<td><input type="text" name="class" value="<%=classes%>"/>
</td>
</tr>
<tr>
<td>Date Of Journey
</td>
<td><input name="dateOfJourney" type="text" class='style1'  value="<%=dateOfJourney%>"/>
</td>
</tr>
<tr>
<td>Journey From
</td>
<td><input name="journeyFrom" type="text"  class='style1'  value="<%=journeyFrom%>"/>
</td>
</tr>
<tr>
<td>Journey To
</td>
<td><input name="journeyTo" type="text"  class='style1' id="journeyTo" value="<%=journeyTo %>"/>
</td>
</tr>
<tr>
<td>
Boarding Point
</td>
<td>
<input type="text" name="boardingPoint" value="<%=boardingPoint%>"></input>
</td>
</tr>

<tr>
<td>Reservation Upto
</td>
<td><input type="text" name="reservationUpto" class='style1'  value="<%=reservationUpto%>"/>
</td>
</tr>
<tr>
<td>Quota</td>
<td><input type="text" name="quota" value="<%=quota%>"/></td>
</tr>
 
<tr>
<td><input name="Update" type="submit" value="Update" class='style1'/>
</td>
</tr>
</table>
</form>
 <%} %>
</body>
</html>
