<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String trainName=request.getParameter("trainName");
String trainNo=request.getParameter("trainNo");
String classes=request.getParameter("classes");
String dateOfJourney=request.getParameter("dateOfJourney");
String journeyFrom=request.getParameter("journeyFrom");
String journeyTo=request.getParameter("journeyTo");
String boardingPoint=request.getParameter("boardingPoint");
String reservationUpto=request.getParameter("reservationUpto");
String quota=request.getParameter("quota");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("insert into ticket_reservation(train_name,train_no,class,date_of_journey,journey_from,journey_to,boarding_point,reservation_upto,quota) values(?,?,?,?,?,?,?,?,?)");
stmt.setString(1,trainName);
stmt.setString(2,trainNo);
stmt.setString(3,classes);
stmt.setString(4,dateOfJourney);
stmt.setString(5,journeyFrom);
stmt.setString(6,journeyTo);
stmt.setString(7,boardingPoint);
stmt.setString(8,reservationUpto);
stmt.setString(9,quota);
stmt.executeUpdate();
%>
Successfully Added.