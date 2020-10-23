<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
<!--
body {
	background-color: black;
}
th,td {
	color: white;
}
-->
</style>
</head>
<body>

	<div align="center">
		<h1 style="color: white;">Edit Product</h1>
		<br />
		<form:form action="/save-product" method="POST" modelAttribute="product">

			<table >
			<tr>
			<td>Product Id :</td>
			<td><form:input path= "productId" readonly="true"/></td>
			</tr>
			<tr>
					<td>Product Name:</td>
					<td><form:input path="productName" readonly="true" id="emailId" /></td>
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
					<td>Protein:</td>
					<td><form:input path="protein" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><button type="submit" style="color: red;">Edit</button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>