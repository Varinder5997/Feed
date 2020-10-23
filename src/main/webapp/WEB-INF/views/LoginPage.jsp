<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<style>
.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: right;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

table td {
	float: right;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

table td:hover {
	border-color: red;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.logout {
	border-color: white;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	width: 80%;
	left: 20%;
}

.dropdown-content .header {
	background: red;
	padding: 16px;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.ref {
	border-color: red;
}

/* Create three equal columns that floats next to each other */
.column {
	float: right;
	width: 10.33%;
	padding: 10px;
	height: 0px;
}

.column a {
	float: none;
	color: black;
	background-color: white;
	padding: 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.column a:hover {
	background-color: #ddd;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

body {
	background-image: url("/resources/images/GuruNanak.png");
	background-size: 100%;
}
/*  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  border-color: red;
} */
th, td {
	padding: 20px;
	color: yellow;
}

table:hover {
	border-color: red;
}

td:hover {
	border-color: red;
}

.table a:hover {
	border-color: red;
}

a {
	
}

h3 {
	color: royalblue;
}
</style>

</head>
<body>
	<%@page import="com.mindtree.gurpartapcattlefeed.entity.*"%>
	<%@page import="java.util.Iterator"%>
	<%
		User user = (User) request.getAttribute("user");
		//System.out.println("code at this point");
	%>



	<div class="navbar">

		<div class="logout">
			<a href="/">LogOut</a>
		</div>

	</div>


	<div class="abc" align="right">


		<h3>
			User Id =
			<%=user.getUserId()%></h3>
		<h3>
			User Name =
			<%=user.getUserName()%></h3>
		<br> <br>
		<table>

			<tr>
				<td><a href="/checkProtein" style="color: khaki">Check
						Protein</a></td>

				<td><a href="/makeSlip" style="color: khaki">Make Slip</a></td>
				<td><a href="/allProducts" style="color: khaki">Show all
						Products</a></td>
			</tr>
		</table>

		<br> <br>

	</div>

</body>
</html>