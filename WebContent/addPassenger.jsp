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
<form action="addPassenger.jsp" method="get" name="addPassenger"></form>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String berthPreference=request.getParameter("berthPreference");
String idCardType=request.getParameter("idCardType");
String idCardNumber=request.getParameter("idCardNumber");
String seniorCitizen=request.getParameter("seniorCitizen");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("insert into passenger(name,age,gender,berth_preference,id_card_type,id_card_number,senior_citizen) values(?,?,?,?,?,?,?)");
stmt.setString(1,name);
stmt.setString(2,age);
stmt.setString(3,gender);
stmt.setString(4,berthPreference);
stmt.setString(5,idCardType);
stmt.setString(6,idCardNumber);
stmt.setString(7,seniorCitizen);
stmt.executeUpdate();
%>
Successfully Added.
