<!-- Application Title:Online Bus Booking
Author name:Parthasarathy E
create on:07/02/2023
last Modified Date and time:01/04/2023
reviewed by:anushya
reviewed Date:20/3/2023  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>payment success</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap')
	;

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.section {
	width: 100%;
	min-height: 110vh;
	background-color: #ddd;
}

.container {
	width: 80%;
	display: block;
	margin: auto;
	padding-top: 80px;
}

.content-section {
	float: left;
	width: 55%;
}

.image-section {
	float: right;
	width: 40%;
	align-items: center;
}

.image-section img {
	margin-top: 20%;
	width: 100%;
	height: auto;
	border-radius:5px;
}

.content-section.title {
	text-transform: uppercase;
	font-size: 28px;
}

.content-section.content h3 {
	margin-top: 20px;
	color: #5d5d5d;
	font-size: 21px;
}

.content-section.content p {
	margin-top: 10px;
	font-family: sans-serif;
	font-size: 18px;
	line-height: 1.5;
}

.image-section .button {
	margin-top: 40px;
	text-align: center;
}

.image-section .button a {
	background-color: #3d3d3d;
	padding: 12px 40px;
	text-decoration: none;
	color: #fff;
	font-size: 25px;
	letter-spacing: 1.5px;
	border-radius: 5px;
}

.image-section .button a:hover {
	background-color: #a52a2a;
	color: #fff;
}

.content-section .title {
	text-align: center;
	font-size: 20px;
	padding: 10px;
	'
}
</style>
</head>
<body>
	<div class="section">
		<div class="container">
			<div class="content-section">
				<div class="title">
					<h1>About Us</h1>
				</div>
				<div class="content">
					<h3><c:out value="Welcome to our online bus booking system!"></c:out></h3>
					<br>
					<p><c:out value="We are a team of dedicated professionals who are passionate
						about making bus travel easy and hassle-free for everyone. Our aim
						is to provide a convenient and reliable platform for travelers to
						book bus tickets online, from the comfort of their homes or
						offices. With our user-friendly interface and secure payment
						gateway, you can easily browse through the available bus routes,
						timings, and fares, and book your tickets with just a few clicks.
						We partner with a wide network of bus operators to offer you a
						wide range of options to choose from, whether you're traveling for
						business or leisure. At our online bus booking system, we are
						committed to delivering exceptional customer service and ensuring
						that your travel experience is smooth and comfortable. Our 24/7
						customer support team is always available to assist you with any
						queries or issues that you may have."></c:out>
					<p>
						<br>
					<p><c:out value="Thank you for choosing our online bus booking system, and we
						look forward to serving you on your next bus journey."></c:out></p>
				</div>
			</div>
			<div class="image-section">
				<img src="image-1 bus.jpeg">
				<div class="button">
					<a href="Welcome.jsp">Back</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>