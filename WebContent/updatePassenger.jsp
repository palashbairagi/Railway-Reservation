<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String berthPreference=request.getParameter("berthPreference");
String idCardType=request.getParameter("idCardType");
String idCardNumber=request.getParameter("idCardNumber");
String seniorCitizen=request.getParameter("seniorCitizen");
int id=Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation","reservation","reservation");
PreparedStatement stmt=con.prepareStatement("update passenger set name=?,age=?,gender=?,berth_preference=?,id_card_type=?,id_card_number=?,senior_citizen=? where id=?"); 
stmt.setString(1,name);
stmt.setString(2,age);
stmt.setString(3,gender);
stmt.setString(4,berthPreference);
stmt.setString(5,idCardType);
stmt.setString(6,idCardNumber);
stmt.setString(7,seniorCitizen);
stmt.setInt(8,id);
stmt.executeUpdate();
%>


<script type="text/javascript"> alert('Passenger Successfully Updated')</script>
