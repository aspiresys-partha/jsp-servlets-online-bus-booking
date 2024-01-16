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
<title>User Details</title>
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
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family: 'Poppins',sans-serif;
}
body{
	display:flex;
	justify-content:center;
	align-items:center;
	padding: 6%;
	background: url("wallpaperflare.com_wallpaper (4).jpg") no-repeat center;
	background-size: cover;
}
.container{
	max-width:600px;
	width:150;
	background:#fff;
	padding: 25px  30px;
	border-radius: 5px;
	box-shadow: 10px 10px 5px #BA55D3;
}
.container .title{
	font-size:25px;
	margin-top:10px;
	padding:10px;
	font-weight:700;
	position:relative;
}
h2{
   padding :10px 10px;
	font-size:30px;
	font-weight:700;
	align-items:center;
	margin-left:35%;
	position:relative;
}
h2:after{
	content: '';
    position: absolute;
    left: 25%;
    bottom: 0;
    transform: translateX(-50%);
    height: 4px;
    width: 80px;
    border-radius: 2px;
    background-color: #BA55D3;
}
.container form .userdetails{
	display:flex;
	flex-wrap:wrap;
	justify-content: space-between;
}
form .userdetails .inputbox{
	margin:10px;
	width:calc(100% / 2- 10px);
}
.userdetails .inputbox .details{
	display: block;
	font-weight: 700;
	margin-bottom: 5px;
}
.userdetails .inputbox input{
	display:block;
	height:45px;
	width:100%;
	outline:none;
	border-radius: 5px;
	border: 1px solid #ccc;
	padding-left:15px;
	font-size:16px;
	border-bottom-width: 4px;
	transition: all 0.3s ease;
}
.userdetails .inputbox input:focus,
.userdetails .inputbox input:valid{
	border-color: #BA55D3;
}
form .button{
	height: 45px;
	margin: 45px 0;
}
.container .button{
	align-items:center;
    margin-left:100px;
}
form .button input{
	height: 100%;
	width: 80%;
	outline: none;
	color: black;
	border: none;
	font-size: 18px;
	font-family: 'Poppins',sans-serif;
	font-weight: 500;
	border-radius:5px;
	letter-spacing: 1px;
	background: linear-gradient(135deg, #DDA0DD 0%, #9400D3 100.7%);
}
.userdetails .inputbox select{
    margin-right:120px;
	display:block;
	height:45px;
	width:100%;
	outline:none;
	border-radius: 5px;
	border: 1px solid #ccc;
	padding-left:15px;
	font-size:16px;
	border-bottom-width: 4px;
	transition: all 0.3s ease;
}
.userdetails .inputbox select:focus,
.userdetails .inputbox select:valid{
	border-color:#BA55D3;
	}
form .button input:hover{
	background: linear-gradient(-135deg, #DDA0DD 0%, #9400D3 100.7%);
}
form .signup{
	text-align: center;
	margin-top: 25px;
}
.signup a{
	color:rgb(0, 0, 255);
}
form a{
	text-decoration: none;
}
form a:hover{
	text-decoration: underline;
}

.userdetails .inputbox select{
	display:block;
	height:45px;
	width:100%;
	outline:none;
	border-radius: 5px;
	border: 1px solid #ccc;
	padding-left:15px;
	font-size:16px;
	border-bottom-width: 4px;
	transition: all 0.3s ease;
}
hr.solid {
margin-bottom:20px;
  border-top: 3px solid #023e8a;
  margin-top:20px;
  
}

</style>
</head>
<body>
<nav class="navbar">
          <ul>
             <li> <a href="BusSeat.jsp"> Back</a></li>
          </ul>
     </nav>
	<div class="container">
		<h2>User Details</h2>
		<%
		String n=null;
      String name=null;
      int age=0;
      String gender=null;
      int count=0;
      String[] seats=request.getParameterValues("seats");
      session.setAttribute("seats",seats);
	   /*  String seat="";
	    for(String str:seats) {
	    	seat=seat.concat(str);
	    	count++;
	    }*/
	    session.setAttribute("count",seats.length); 
	    for(int index=1;index<=seats.length;index++){ 
	    %>
		<div class="title">
			Passenger
			<%=index%></div>
		<form action="ViewDetails.jsp" method="post">
			<div class="userdetails">
				<div class="inputbox">
					<span class="details">Passenger Name</span> <input type="text"
						 name=<%="name"+index %> required>
				</div>
				<div class="inputbox">
					<span class="details">Seat</span> <input type="text" value="<%=seats[index-1] %>"
					readonly name=<%="seat"+index %> required>
				</div>
				<div class="inputbox">
					<span class="details">Age</span> <input type="text"
						 name=<%="age"+index%> required>
				</div>
				<div class="inputbox">
					<span class="details">Gender</span> <select name=<%="gender"+index%> required>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="others">Others</option>
					</select>
				</div>
			</div>
			<br>
			<%if(index!=seats.length){ %>
			<hr class="solid">
			<%}}%>
			<div class="button">
				<input type="submit" value="Submit" id="submit">
			</div>
		</form>
	</div>

</body>
</html>