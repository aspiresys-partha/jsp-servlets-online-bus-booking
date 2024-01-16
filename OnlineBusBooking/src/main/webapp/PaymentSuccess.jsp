<!-- Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	margin:0;
	padding: 0;
	font-family:sans-serif;
	background:#fff;
	height:100vh;
	align-items: center;
}

.content{
	position: absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
}
.content{
	width:400px;
	height:290px;
	background:white;
	border-radius:3px;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
.header{
	height: 68px;
	background: #219ebc;
	overflow: hidden;
	border-radius: 3px 3px 0 0;
	box-shadow: 0 2ppx 3 px 0 rgba(0,0,0.2);
}
.header h2{
	color: white;
	padding-left: 32px;
	font-weight:normal;
}
.fa-times{
	position: absloute;
	right:20px;
	top:20px;
	color: #e8f7fc;
	font-size:20px;
	font-weight:bold;
	cursor: pointer;
}
.fa-check{
	font-size: 50px;
	color: #219ebc;
	font-weight: bold;
	height: 80px;
	width:80px;
	border: 2px solid #219ebc;
	text-align: center;
	
	padding-top: 13px;
	border-radius: 50%;
	box-sizing: border-box;
	margin: 30px 0 0 160px;
}
p{
	padding-top:10px;
	font-size: 19px;
	color: #1a1a1a;
	text-align: center;
	 
}
.line{
	bottom: 60px;
	width: 100%;
	height:1 px;
	background:silver;
}
.close-btn{
	position:absloute;
	bottom: 12px;
	right: 25px;
	border:1px solid #219ebc;
	border-radius: 3px;
	color: #219ebc;
	padding: 8px 10px;
	font-size: 18px;
	cursor: pointer;
}
.close-btn:hover{
	background: #219ebc;
	color: white;
	transition:.5s;
	
}
a:link, a:visited {
  
  padding: 14px 180px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  background: #219ebc;
	color: white;
	transition:.5s;
	align-items:center;
}

a:hover, a:active {
  background:#219ebc;
   
}
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
	
}
.navbar ul li a{
	font-size: 20px;
	height:px;
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
</style>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
<nav class="navbar">
          <ul>
             <li><a href="SelectLocation.jsp">Book Again</a></li>
             <li> <a href="Welcome.jsp"> Log Out</a></li>
             
          </ul>
     </nav>
<div class="content">
<div class="header">
     <h2> Payment Status</h2>
     <label for="click" class="fas fa-times"></label>
</div>
     <label for="click" class="fas fa-check"></label>
     <p> Payment Successful </p>
<div class="line"></div>
<!--  <label for="click" class="close-btn">Close</label>-->
 <a href="Welcome.jsp">Close</a>
</div>
</body>
</html>