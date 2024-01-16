
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
<title>SOurce and Destination</title>
<style >
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family: 'Poppins',sans-serif;
}
body{
	display:flex;
	height:100vh;
	justify-content:center;
	align-items:center;
	padding: 10px;
	background: url("wallpaperflare.com_wallpaper (8).jpg") no-repeat center;
	background-size: cover;
}
.container{
	max-width:500px;
	width:200;
	background:#fff;
	padding:25px 30px;
	border-radius: 5px;
	box-shadow: 10px 10px 5px #80ed99;
}
.container .title{
	font-size:25px;
	font-weight:700;
	position:relative;
}
.container form .userdetails{
	display:flex;
	flex-wrap:wrap;
	justify-content: space-between;
}
form .userdetails .inputbox{
	margin:15px;
	width:calc(100% / 1 - 20px);
}
.userdetails .inputbox .details{
	display: block;
	font-weight: 700;
	margin-bottom: 5px;
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
	border-color: rgb(0, 128, 255)
}
form .button{
	height: 45px;
	margin: 45px 0;
}
.container .button{
	align-items:center;
    margin-left:120px;
     text-decoration:none;
   
}
form .button input{
	height: 100%;
	width: 70%;
	outline: none;
	color: black;
	 text-decoration:none;
   
	border: none;
	font-size: 18px;
	font-family: 'Poppins',sans-serif;
	font-weight: 500;
	border-radius:5px;
	letter-spacing: 1px;
	background: linear-gradient(135deg,#90EE90 0%,	#228B22 100.7%);
}
form .button input:hover{
	background: linear-gradient(-135deg,#90EE90 0%, #228B22 100.7%);
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
</style>
</head>
 <body>
	<div class="container">
		<div class="title"></div>
		<form action="SelectLocationServlet1" method="post">
			<div class="userdetails">
				<div class="inputbox">
				<%String[] location = new String[] {"Chennai", "Coimbatore", "Ariyalur", "Cuddalore", "Dharmapuri",
						"Dindigul", "Erode", "Kancheepuram", "Kanyakumari", "Karur", "Krishnagiri", "Madurai", "Nagapattinam", "Namakkal",
						"Perambalur", "Pudukottai", "Ramanathapuram", "Selam", "Sivaganga", "Thanjavur", "The Nilgiris", "Theni", "Thiruvallur",
						"Thiruvannamalai", "Thiruvarur", "Thirunelveli", "Tiruppur", "Trichirappalli", "Tuticorin", "Vellore", "Villupuram", "Virudhunagar"}; %>
					<span class="details">From</span> <select name="source">
					<%for(int i = 0 ; i < location.length ; i++){ %>
						<option value="<%=location[i]%>"><%=location[i]%></option>
						<%} %>
					</select>
				</div>
				<div class="inputbox">
					<span class="details">To</span> <select name="destination">
						<%for(int i = 0 ; i < location.length ; i++){ %>
						<option value="<%=location[i]%>"><%=location[i]%></option>
						<%} %>
					</select>
				</div>
				<div class="inputbox">
				<span class="details">Date</span> <input type="date"
					 name="date" required>
				</div>
			</div>
			<div class="button">
				<input type="submit" value="Search Buses">
			</div>
		</form>
	</div>
</body>
</html>