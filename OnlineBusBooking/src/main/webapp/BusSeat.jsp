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
<%@ page import="java.util.ArrayList"%>
<%

String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/onlinebusbooking?useSSL=false";
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
<title>Insert title here</title>
<style>
body {
	font-size: 16px;
	background:url(https://weirdomatic.com/wp-content/pictures/2019/08/8f63b7f1d8fe332b7ede296fe552ed82.jpeg) no-repeat;
	background-size:cover;
}

.bus {
	margin: 20px auto;
	max-width: 300px;
	background-image:linear-gradient(to bottom,#fff,#fff);
	backdrop-filter:blur(5px);	
	border-top-left-radius: 20%;
	border-top-right-radius: 20%;
	height: 500px;
}

.select {
	height: 100px;
	position: relative;
	overflow: hidden;
	text-align: center;
}

.select h1 {
	width: 70%;
	margin: 10px auto 15px auto;
}

.exit {
	padding: 7px;
	height: 6px;
	position: relative;
}

.exit:before, .exit:after {
	content: 'EXIT';
	font-size: 14px;
	line-height: 20px;
	padding: 2px 2px 2px 2px;
	display: block;
	position: absolute;
	background: red;
	color: white;
	transform: translate(0, -50%);
	border-radius: 5px;
}

ol {
	list-style: none;
	padding: 0;
	margi: 0;
}

.seats {
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: flex-start;
}

.seat {
	display: flex;
	flex: 0 0 14.28%;
	padding: 4px;
	position: relative;
}

.seat label {
	dispaly: block;
	position: relative;
	width: 100%;
	text-align: center;
	font-size: 14px;
	font-weight: bolder;
	line-height: 1.5rem;
	padding: 3px 0;
	background: #5bfc60;
	border-radius: 5px;
	color: black;
}

.seat label:hover {
	cursor: pointer;
	box-shadow: 0 0 0px 2px green;
}

.seat input[type=checkbox] {
	position: absolute;
}

.seat input[type=checkbox]:checked+label {
	background-color: #656e65;
}

.seat:nth-child(2) {
	margin-right: 14%;
}

#button {
  display: flex;
  text-decoration:none;
  flex-direction: column;
  align-items: center;
  padding: 8px 12px;
  font-size:18px;
  font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;
  border-radius: 6px;
  border: none;
  margin:auto;
  background: #6E6D70;
  box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);
  color: #DFDEDF;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  cursor:pointer;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	
}
#button:focus {
  box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);
  outline: 0;
}
#button:hover{
	background:#499ab3;
	color:black;
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
</style>
</head>
<body>
<nav class="navbar">
          <ul>
             <li> <a href="SelectLocation.jsp">Back</a></li>
          </ul>
     </nav><br><br>
	<% 
try {
	Object date=session.getAttribute("date");
	connection = DriverManager.getConnection(connectionUrl, userid, password);
	statement = connection.createStatement();
	String travelsid=request.getParameter("travelsid");
	session.setAttribute("travelsid",travelsid);
	String sql = "select * from selectedseat where  travelsid = '"+travelsid+"'";
	resultSet = statement.executeQuery(sql);
	//out.println(date);
		 %>
	<form action="SelectedSeatServlet" method="post">
 		<div class="bus">
			<div class="select">
				<h1>Please Select a Seat</h1>				
			</div>
			<div class="exit"></div>
			<ol>
				<% 
						String str="";
						while (resultSet.next()){
							String seats=resultSet.getString(4);
							str=str.concat(seats.replace("[","").replace("]","").replace(",",""));
						}
						//out.println(str);
						for(char ch='A';ch<'H';ch++){
							%>
				<li>
					<ol class="seats">
						<%
						for(int index=1;index<=5;index++){
						String string=String.valueOf(ch)+String.valueOf(index);
						if(str.contains(string)){
								%>
						<li class="seat"><input type="checkbox" name="seats"
							value=<%=string %> id=<%=string %> checked disabled> <label
							for=<%=string %>><%=string %></label></li>
						<% }
						else{
							%>
						<li class="seat"><input type="checkbox" name="seats"
							value=<%=string %> id=<%=string %>> <label
							for=<%=string %>><%=string %></label></li>
						<%
							}}
							%>
					</ol>
				</li>
				<%
						}%>
			</ol>
			<div class="exit"></div><br>
				<button type="submit" id="button">Book</button>
		</div>
		</form>
	<%	
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			
			%>
</body>
</html>