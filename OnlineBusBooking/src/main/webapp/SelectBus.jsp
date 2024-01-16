<!-- Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/onlinebusbooking";
String userid = "root";
String password = "partha";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Bus</title>
<style>
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
	margin: 0 8px;
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
	border-radius:5px;
    color:white;
	background:#0077b6 ;
	
}
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
padding:20px ;
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
padding:10px 20px;
  text-align:center;
  font-size:23px;
  background-color:#ccc;
  color:blue;
  border-radius:10px;
 	text-decoration:none;
  outline:none;
  border:none;
  tranform:.transform 100ms ease-in;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
.btn button:hover{
 background-color:blue;
  color:#ccc;
}
</style>
</head>
<body>
<nav class="navbar">
          <ul>
             <li> <a href="SelectLocation.jsp"> Back</a></li>
          </ul>
     </nav><br><br>
   <h1 style='color:black'>ALL BUSES FROM  <% out.println(String.valueOf(session.getAttribute("source")).toUpperCase()); %> TO <% out.println(session.getAttribute("destination").toString().toUpperCase()); %></h1>
    <!-- <form action="BusSeat.jsp"> -->
    <table>
		<tr>
			<th>Travels Name</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Date</th>
			<th>Book</th>
		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement = connection.createStatement();
			String sql = "select * from travels where source='"+session.getAttribute("source")+"' and destination='"+session.getAttribute("destination")+"' and date='"+session.getAttribute("date")+"'";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("travelsname")%></td>
			<td><%=resultSet.getString("source")%></td>
			<td><%=resultSet.getString("destination")%></td>
			<td><%=resultSet.getString("date")%></td>
			<td><div class="btn" ><button type="button" id="button"style="text-decoration:none"><a href="BusSeat.jsp?travelsid=<%=resultSet.getInt("travelsid")%>">Book </a></button>
			</div></td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>

</body>
</html>