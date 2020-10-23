<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h1>Add New User</h1>
		<br />
		<form:form action="/save-product" method="POST" modelAttribute="product">

			<table >
			<tr>
					<td>Product Name:</td>
					<td><form:input path="productName" id="emailId" /></td>
					<td><h7 id="emailIdcheck"></h7></td>
					

				</tr>
				
				<tr>
					<td>Product Price:</td>
					<td><form:input path="productPrice" id="guestName" /></td>
					<td><h7 id="guestNamecheck"></h7></td>

				</tr>

				<tr>
					<td>Product Quantity:</td>
					<td><form:input path="productQuantity" id="guestPassword" /></td>
					<td><h7 id="passwordcheck"></h7></td>
				</tr>
		

				<tr>
					<td colspan="2"><button type="submit">Save</button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>