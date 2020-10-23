<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add new User</title>
<style>
body {
  /* The image used */
  background-image: url("/resources/images/login.png");
  background-size: 100%;

}
</style>
</head>
<body>
	<div align="left">
		<h1>&nbsp;&nbsp;&nbsp;Login User</h1>
		<br />
		<form:form action="/login-user" method="POST" modelAttribute="loginDto">

			<table border="0" cellpadding="10">
				<tr>
					<td>User Email:</td>
					<td style="color:goldenrod"><form:input path="userEmail" /></td>

				
				</tr>
				<tr>
					<td>User Password:</td>
					<td ><form:input type ="password" path="Password" /></td>
				</tr>
				

				<tr>
					<td colspan="2" align="center"><button type="submit">Login</button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>