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
<title>  
User Login 
</title>
<style>
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
	background-image:url(https://cdn.wallpapersafari.com/89/94/KycE8k.png);
	
}
.container{
	max-width:900px;
	width:200;
	background:#fff;
	padding:25px 30px;
	border-radius: 5px;
	box-shadow: 10px 10px 5px rgb(0, 128, 255);
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
	width:calc(98% / 1 - 20px);
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
	border-color: rgb(0, 128, 255)
}
.container .button{
	align-items:center;
    margin-left:80px;
}
form .button{
	height: 45px;
	margin: 45px 0;
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
	background: linear-gradient(135deg, rgb(187, 236, 234) 0%, rgb(0, 128, 255) 100.7%);
}
form .button input:hover{
	background: linear-gradient(-135deg, rgb(187, 236, 234) 0%, rgb(0, 128, 255) 100.7%);
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
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <div class="container">
       <div class="title">User Login</div>
       <form action="UserLoginServlet1" method="post">
          <div class="userdetails">
             <div class="inputbox">
                 <span class="details">Username</span>
                 <input type="text" name="username" required>
             </div>
             <div class="inputbox">
                 <span class="details">Password</span>
                 <input type="password" name="password"   required>
             </div>
          </div>
             <div class="button">
                 <input type="submit" value="Submit">
             </div>
             <div class="signup">
             New User?<a href="NewUser.jsp">SignUp</a>
             </div>
       </form>
    </div>
    <script src="vendor/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status= document.getElementById("status").value;
if(status == "failed"){
	swal("Sorry","Invalid UserName or Password","error");
}
</script>
</body>
</html>