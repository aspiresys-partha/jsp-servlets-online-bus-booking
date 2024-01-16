
<!-- Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
	margin:0;
	padding:0;
	font-family: arial;
	box-Sizing: border-box;
}
body{
padding:10px;
  height: 40vh;
  display: grid;
  place-items: center;
 background: url('https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-3798.jpg?w=740&t=st=1674757570~exp=1674758170~hmac=457e5d87c6e2421bef0d3e5144c97f5043d33ec9e7908c5b6fb10ba54f248d35') no-repeat;
 background-size: cover;
  background-size: 100% ;
}
table{
  padding:  10px;
	width:1200px;
	box-shadow:-1px 12px 12px -6px rgba(0,0,0,0.5);
}

body h1{
padding:10px ;
}
table,td,th{
	padding:10px;
	border: 1px solid lightblue;
	border-collapse: collapse;
	text-align: center;
	cursor:pointer;
}
td{
	font-size: 23px;
}
th{
 font-size:25px;
	background-color: blue;
	color: white;
}
tr:nth-child(odd){
	background-color:ligthblue;
}
tr:nth-child(odd):hover{
	background-color: dodgerdlue;
	color: blue;
	transform: scale(1.0);
	transform:transform 300ms ease-in;
}
tr:nth-child(even){
	background-color:#ededed;
}
tr:nth-child(even):hover{
	background-color: dodgergray;
	color: blue;
	transform: scale(1.0);
	transform:transform 200ms ease-in;
	}
.btn button{
padding:10px 30px;
  text-align:center;
  font-size:23px;
  background-color:#ccc;
  color:blue;
  border-radius:10px;
  outline:none;
  border:none;
  tranform:.transform 100ms ease-in;
}
.btn button:hover{
 background-color:blue;
  color:#ccc;
}
.navbar{
	position: fixed;
	height: 80px;
	width: 100%;
	padding:0 20px 0 20px;
	top: 0;
	left: 0;
	
}
.navbar .logo{
	width: 140px;
	height: auto;
	padding: 40px 100px;
}
.navbar ul{
	float:left;
	margin-left: 20px;
}
.navbar ul li{
	list-style: none;
	margin: 0 2px;
	display: inline-block;
	line-height: 80px;
}
.navbar ul li a{
	border-radius: 5px;
	font-size: 20px;
	font-family: 'Roboto', sans-serif;
	color:#0077b6 ;
	background:white ;
	padding: 6px 13px;
	text-decoration: none;
	transition: .4s;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	
}
.navbar ul li a.active,
.navbar ul li a:hover{
	border-radius: 5px;
    color:white;
	background:#0077b6 ;
	
}
.btn a{
padding:5px;
 font-size:25px;
	height: 100%;
	width: 70%;
	outline: none;
	color:white;
	border: none;
	font-size: px;
	text-decoration:none;
   position:relative;
	font-family: 'Poppins',sans-serif;
	font-weight: 500;
	border-radius:5px;
	letter-spacing: 1px;
	background:#403d39;
}
.btn a:hover{
	background:#ccc5b9;
	color:#403d39;
	}
</style>
</head>
<body>
<nav class="navbar">
          <ul>
             <li> <a href="BusSeat.jsp"> Back</a></li>
          </ul>
     </nav><br><br>
     <h1 style='color:black'>BOOKED DETAILS</h1>
<table>
		<tr>
			<th>Passenger Name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>SeatNumber</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Date</th>
			<th>Amount</th>
		</tr>
		<tr>
<% 
String seatcount=String.valueOf(session.getAttribute("count"));
int count=Integer.parseInt(seatcount);
int amount=count*500;
for(int i=1;i<=count;i++){
String name="name"+i;
String PassengerName=request.getParameter(name).toString();
%>
<td><%out.println(PassengerName); %></td>
<%
String age="age"+i;
String PassengerAge=request.getParameter(age).toString();
int PAge=Integer.parseInt(PassengerAge);
%>
<td><%out.println(PAge); %></td>
<%
String gender="gender"+i;
String PassengerGender=request.getParameter(gender).toString();
%>
<td><%out.println(PassengerGender); %></td>
<%
String seat="seat"+i;
String PassengerSeat=request.getParameter(seat).toString();
%>
<td><%out.println(PassengerSeat);%></td>
<%
String source=session.getAttribute("source").toString().toUpperCase();
String destination=session.getAttribute("destination").toString().toUpperCase();
String date=session.getAttribute("date").toString();
 %>
 <td><%out.println(source);%></td>
  <td><%out.println(destination);%></td>
   <td><%out.println(date);%></td>
   <td><%out.println(500); %></td>
</tr>
<%}%>
</table>
<br><br>
<%session.setAttribute("totalamount",amount); %>
<div class="btn">
<a href="Payment.jsp">Proceed to payment</a>
</div>
</body>
</html>