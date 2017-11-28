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
<form action="addPassenger.jsp" method="get" name="passengerForm"/>
<table class="style1">
<caption>
<h3>Passenger Registration</h3>
</caption>
<tr>
<td >Name</td>
<td><input name="name" type="text"  class="style1" />
</td>
</tr>
<tr>
<td>Age
</td>
<td><input name="age" type="text" size="20" maxlength="20" class="style1" />
</td>
</tr>
<tr>
<td>Gender
</td>
<td><input name="gender" type="radio" value="M" class="style1"/>M<br>
<input name="gender" type="radio" value="F"/>F<br>
</td>
</tr>
<tr>
<td>BerthPreference
</td>
<td><input name="berthPreference" type="text" />
</td>
</tr>
<tr>
<td>Id Card Type
</td>
<td><input name="idCardType" type="text" size="50" maxlength="50" class="style1"/>
</td>
</tr>

<tr>
<td>Id Card Number
</td>
<td><input type="text" name="idCardNumber" cols="25" rows="4" maxlength="100" class="style1">
</td>
</tr>
<tr>
<td>Senior Citizen
</td>
<td><input name="seniorCitizen" type="radio" value="yes" class="style1"/>Yes<br>
<input type="radio" name="seniorCitizen" value="No"/>No<br>
</td>
</tr>
<tr>
<td><input name="submit" type="submit" value="Book" class="style1"/>
</td>
<td>
<input name="reset" type="reset" value="Clear" class="style1"/>
</td>
</tr>
</table>
</form>
</body>
</html>
