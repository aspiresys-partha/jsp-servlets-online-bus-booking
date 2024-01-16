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
<title>Payment</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items:center;
  background-color: #fff;
}
::selection{
  background: #4158d0;
  color: #fff;
}
.wrapper{
  text-align: center;
  width: 380px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color:#fff;
  user-select: none;
  border-radius: 10px;
  background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field,.fields{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input,.fields input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 10px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapper form .field label,.fields label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);

}
form .fields input ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);
  border-color: #4158d0;
}
form .content{
  display: flex;
  width: 100%;
  height: 50px;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[type="submit"]{
  border: none;
  padding-left: 0;
  color:#fff;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
 background: rgb(238,174,202);
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
}
form .field input[type="submit"]:active{
  transform: scale(0.95);
}
form .signup-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signup-link a{
  color: #4158d0;
  text-decoration: none;
}
form .pass-link a:hover,
form .signup-link a:hover{
  text-decoration: underline;
}
a:link, a:visited {
  display: grid;
  height: 100%;
  width: 100%;
   border-radius: 10px;
  background-color: #fff;
  color: #fff;
  background: rgb(2,0,36);
  background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
.navbar{
	position: fixed;
	height: 80px;
	width: 100%;
	padding:0 20px 0 20px;
	margin-top:20px;
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
}
.navbar ul li a{
	border-radius: 5px;
	font-size: 20px;
	font-family: 'Roboto',sans-serif;
	color:#0077b6 ;
	background:white ;
	padding: 6px 13px;
	text-decoration: none;
	transition:.4s;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	  color:white;
	background:#0077b6 ;
}
.navbar ul li a.active,
.navbar ul li a:hover{
	border-radius: 5px;
   color:#0077b6 ;
	background:white;
}
#phone{
outline:0;
}
#phone:valid{
border-color:green;
}
#phone:focus:invalid{
border-color:red;
}
</style>
   </head>
   <body>
   <nav class="navbar">
          <ul>
             <li> <a href="ViewDetails.jsp"> Back</a></li>
          </ul>
     </nav><br><br>
      <div class="wrapper">
         <div class="title">
            Payment
         </div>
         <form action="PaymentSuccess.jsp" method="post">
            <div class="field">
               <input type="text" name="Name" required>
               <label>Name on Card</label>
            </div>
            <div class="field">
               <input  id="phone" type="tel" name="MobileNumber" required pattern="[0-9]{5}[0-9]{5}"/>             
               <label>Mobile Number</label>
            </div>
            <div class="fields">
               <input type="number" value="<%=session.getAttribute("totalamount") %>" readonly>
               <label>Amount</label>
            </div>
             <div class="field">
               <input id="phone" type="tel" name="CardNumber" required pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" title="Format=1234-1234-1234-1234"/>
               <label>Card Number</label>
            </div>
            <div class="field">
               <input id="phone" type="tel" name="Expmonth" required pattern="[0-9]{2}" />
               <label>Exp Month</label>
            </div>
            <div class="field">
               <input id="phone" type="number" name="Expyear" required  pattern="[0-9]{4}" />
               <label>Exp Year</label>
            </div>
            <div class="field">
               <input type="password" name="CVV" required>
               <label>CVV</label>
            </div>
            <div class="field">
               <input type="submit" value="Proceed">
            </div>
         </form>
      </div>
     
   </body>
</html>