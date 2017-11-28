<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Passenger Registration</title>
<script type="text/javascript" src="validation.js"></script>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
</head>
<body>
<form action="addPassengerPage.jsp" method="get" name="passengerForm">
<table class="style1">
<caption>
<h3>Booking</h3>
</caption>
<tr>
<td >Train Name</td>
<td><input name="trainName" type="text"  class="style1" />
</td>
</tr>
<tr>
<td>Train Number
</td>
<td><input name="trainNo" type="text" size="20" maxlength="20" class="style1" />
</td>
</tr>
<tr>
<td>Class
</td>
<td><input name="classes" type="text" class="style1"/>
</td>
</tr>
<tr>
<td>Date Of Journey
</td>
<td><input name="dateOfJourney" type="date"/>
</td>
</tr>
<tr>
<td>Journey From
</td>
<td><input name="journeyFrom" type="text" size="50" maxlength="50" class="style1"/>
</td>
</tr>

<tr>
<td>Journey To
</td>
<td><input type="text" name="journeyTo"  class="style1"/>
</td>
</tr>
<tr>
<td>Boarding Point
</td>
<td><input name="boardingPoint" type="text" />
</td>
</tr>
<tr>
<td>Reservation Upto
</td>
<td><input type="text" name="reservationUpto"/>
</td>
</tr>

<tr>
<td>Quota
</td>
<td><input type="text" name="quota"/>
</td>
</tr>

<tr>
<td><input name="submit" type="submit" value="Next" class="style1"/>
</td>
<td>
<input name="reset" type="reset" value="Clear" class="style1"/>
</td>
</tr>
</table>
</form>
</body>
</html>
