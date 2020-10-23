<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.List"%>
	<%@page import="java.util.Iterator"%>
	<%
	List<Float> products = (List<Float>) request.getAttribute("all");
	%>
	
		<div align="center">
		<h1>All Products</h1>
		<br />
		<table border="1" cellpadding="10">
		
				<tr>
					<th>Total Amount : </th>
					<th><%=products.get(0) %></th>
					
				</tr>
				<tr>
				<td>Total Weight</td>
					<td><%=products.get(1) %></td>
				</tr>
		
			
			<a href="/owner">Go to Home</a>
		</table>
		<a href="/addproduct">Add New Product</a>
	</div>
	
</body>
</html>