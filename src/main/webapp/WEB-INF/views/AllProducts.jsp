<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style type="text/css">
 table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  border-color: white;
}
body {
	background-color: black;
	
}
.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

</style>
</head>
<body>
	<%@page import="java.util.List"%>
	<%@page import="com.mindtree.gurpartapcattlefeed.entity.*"%>
	<%@page import="java.util.Iterator"%>
	<%
	List<Products> products = (List<Products>) request.getAttribute("all");
	%>
	<div class="navbar">

 <div class="logout">
 <a href="/login-page">Home</a>
  </div>

    </div>
	
		<div class="abc" align="center">
		
		<h1 style="color: white;">All Products</h1>
		<br />
		<table border="1" cellpadding="5" >
			<thead>
				<tr>
					<th style="color: white">Product Id</th>
					<th style="color: white">Product Name</th>
					<th style="color: white">Product Price</th>
					<th style="color: white">Quantity</th>
					<th style="color: white">Protein</th>
					<th style="color: white">Edit Product</th>
				</tr>
			</thead>
			<tbody>
				<%
					Iterator<Products> iterator = products.iterator();

					while (iterator.hasNext()) {
						Products product = iterator.next();
				%>
				<tr>
					<td style="color: white"><%=product.getProductId()%></td>
					<td style="color: white"><%=product.getProductName()%></td>
					<td style="color: white"><%=product.getProductPrice()%></td>
					<td style="color: white"><%=product.getProductQuantity()%></td>
					<td style="color: white"><%=product.getProtein() %>%</td>
				 	<td><a
						href="/editProduct/<%=product.getProductId()%>" style="color:red">Edit 
						Product</a></td>
				</tr> 
				<%
					}
				%>
			</tbody>
			
		</table>
		<a href="/addproduct">Add New Product</a>
	</div>
</body>
</html>