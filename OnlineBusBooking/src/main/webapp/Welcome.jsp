<!-- Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/function" %>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
.navbar{
	position: fixed;
	height: 80px;
	width: 100%;
	top: 0;
	left: 0;
	
}
.navbar .logo{
	width: 140px;
	height: auto;
	padding: 20px 100px;
}
.navbar ul{
	float: right;
	margin-right: 20px;
}
.navbar ul li{
	list-style: none;
	margin: 0 8px;
	display: inline-block;
	line-height: 80px;
}
.navbar ul li a{
	font-size: 20px;
	height:30px;
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
    color:white;
	background:#0077b6 ;
	border-radius: 2px;
}
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.bus {
	width: 100%;
	height: 100vh;
	background-image:
		url(image-1.jpg);
	background-size: cover;
	}

.control {
	font-size: 20px;
	width: 100%;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	text-align: center;
	color: #ff6361;
}

.bus h1 {
	text-align: center;
	font-size: 50px;
	margin-top: 60px;
}

button {
	width: 200px;
	padding: 25px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 15px;
	font-weight: bold;
	font-size: 25px;
	background:#fff;
	color: #0080ff;
	cursor: pointer;
	position: relative;
	overflow: hidden;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

button:hover {
	color: #fff;
	background: #0080ff;
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

span {
	background:#fff;
	height: 100%;
	width: 0;
	border-radius: 25px;
	position: absolute;
	left: 0;
	right: 0;
	z-index: -1;
	transition: 0.5s;
}
</style>
</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="bus">
	<nav class="navbar">
          <ul>
             <li> <a href=""> Home</a></li>
             <li><a href="SelectBusLocation.jsp"> View Bus</a></li>
             <li><a href="AboutUs.jsp"> AboutUs</a></li>
             <li> <a href="contactUs.jsp"> Contact Us</a></li>
<%-- <c:out  value="Hello"></c:out> --%>             </ul>
     </nav>
		<div class="control">
			<h1> <c:out value="Online Bus Ticket Booking"></c:out></h1>
			<a href="UserLogin.jsp"><button id="button" type="button">
					<span></span>Login
				</button></a>
				 <a href="NewUser.jsp"><button id="button" type="button">
					<span></span>SignUp
				</button></a>
		</div>
	</div>
</body>
</html>