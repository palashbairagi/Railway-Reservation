<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String trainNumber=request.getParameter("trainNumber");
String trainName=request.getParameter("trainName");
String trainType=request.getParameter("trainType");
String zone=request.getParameter("zone");
String dateFrom=request.getParameter("dateFrom");
String dateTo=request.getParameter("dateTo");
String trainFrom=request.getParameter("trainFrom");
String departure=request.getParameter("departure");
String trainTo=request.getParameter("trainTo");
String arrival=request.getParameter("arrival");
String duration=request.getParameter("duration");
String halts=request.getParameter("halts");
String depDays=request.getParameter("depDays");
String classes=request.getParameter("classes");
String distance=request.getParameter("distance");
String speed=request.getParameter("speed");
String trainReturn=request.getParameter("trainReturn");
int id=Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("update train set train_number=?,train_name=?,train_type=?,zone=?,date_from=?,date_to=?,train_from=?,departure=?,train_to=?,arrival=?,duration=?,halts=?,dep_days=?,class=?,distance=?,speed=?,train_return=? where id=?"); 
stmt.setString(1,trainNumber);
stmt.setString(2,trainName);
stmt.setString(3,trainType);
stmt.setString(4,zone);
stmt.setString(5,dateFrom);
stmt.setString(6,dateTo);
stmt.setString(7,trainFrom);
stmt.setString(8,departure);
stmt.setString(9,trainTo);
stmt.setString(10,arrival);
stmt.setString(11,duration);
stmt.setString(12,halts);
stmt.setString(13,depDays);
stmt.setString(14,classes);
stmt.setString(15,distance);
stmt.setString(16,speed);
stmt.setString(17,trainReturn);
stmt.setInt(18,id);
stmt.executeUpdate();
%>


<script type="text/javascript"> alert('Train Successfully Updated')</script>
