<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title > . </title>
<style type="text/css">
 table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.navbar {
  overflow: hidden;
  background-color: white;
  font-family: Arial, Helvetica, sans-serif;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
</style>
</head>
<body>
<%@page import="java.util.List"%>
	<%@page import="com.mindtree.gurpartapcattlefeed.entity.*"%>
	<%@page import="com.mindtree.gurpartapcattlefeed.dto.*"%>
	<%@page import="java.util.Iterator"%>
	<%@page import ="java.util.Scanner" %>
	<%
		ProductDtoAndList dto =(ProductDtoAndList)request.getAttribute("dto");
	List<Products> products = dto.getAllProducts();
	ProductDto productDto=dto.getProductDto();
	List<Float>quantity=(List<Float>)request.getAttribute("quantity");
	List<Double>price=(List<Double>)request.getAttribute("price");
	float totalQuantity=(float)request.getAttribute("totalQuantity");
	double totalPrice=(double)request.getAttribute("totalPrice");
	float labour=(float)request.getAttribute("labour");
	double gst=(double)request.getAttribute("gst");
	double grosstotal=(double)request.getAttribute("groustotal");
	String name=(String)request.getAttribute("name");
	%>

	
		<div align="center">
		<h3>Estimate</h3>
		<h5>Name    :    <%=name %></h5>
		
			<table border="1" cellpadding="3" >
			<tr>
			<td>Product Id  </td>
			<td>Product Name  </td>
			<td>Product Price  </td>
			<td>Product Quantity  </td>
			<td>Price </td>
			
			</tr>
			<tr>
					<td align="center"><%=products.get(0).getProductId() %></td>
					<td align="left"><%=products.get(0).getProductName() %></td>
					<td align="center"><%=products.get(0).getProductPrice() %></td>
					<td align="center"><%=quantity.get(0) %></td>
					<td align="center"><%=price.get(0) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(1).getProductId() %></td>
					<td align="left"><%=products.get(1).getProductName() %></td>
					<td align="center"><%=products.get(1).getProductPrice() %></td>
					<td align="center"><%=quantity.get(1) %></td>
					<td align="center"><%=price.get(1) %></td>
				</tr>		
				<tr>
					<td align="center"><%=products.get(2).getProductId() %></td>
					<td align="left"><%=products.get(2).getProductName() %></td>
					<td align="center"><%=products.get(2).getProductPrice() %></td>
					<td align="center"><%=quantity.get(2) %></td>
					<td align="center"><%=price.get(2) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(3).getProductId() %></td>
					<td align="left"><%=products.get(3).getProductName() %></td>
					<td align="center"><%=products.get(3).getProductPrice() %></td>
					<td align="center"><%=quantity.get(3) %></td>
					<td align="center"><%=price.get(3) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(4).getProductId() %></td>
					<td align="left"><%=products.get(4).getProductName() %></td>
					<td align="center"><%=products.get(4).getProductPrice() %></td>
					<td align="center"><%=quantity.get(4) %></td>
					<td align="center"><%=price.get(4) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(5).getProductId() %></td>
					<td align="left"><%=products.get(5).getProductName() %></td>
					<td align="center"><%=products.get(5).getProductPrice() %></td>
					<td align="center"><%=quantity.get(5) %></td>
					<td align="center"><%=price.get(5) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(6).getProductId() %></td>
					<td align="left"><%=products.get(6).getProductName() %></td>
					<td align="center"><%=products.get(6).getProductPrice() %></td>
					<td align="center"><%=quantity.get(6) %></td>
					<td align="center"><%=price.get(6) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(7).getProductId() %></td>
					<td align="left"><%=products.get(7).getProductName() %></td>
					<td align="center"><%=products.get(7).getProductPrice() %></td>
					<td align="center"><%=quantity.get(7) %></td>
					<td align="center"><%=price.get(7) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(8).getProductId() %></td>
					<td align="left"><%=products.get(8).getProductName() %></td>
					<td align="center"><%=products.get(8).getProductPrice() %></td>
					<td align="center"><%=quantity.get(8) %></td>
					<td align="center"><%=price.get(8) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(9).getProductId() %></td>
					<td align="left"><%=products.get(9).getProductName() %></td>
					<td align="center"><%=products.get(9).getProductPrice() %></td>
					<td align="center"><%=quantity.get(9) %></td>
					<td align="center"><%=price.get(9) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(10).getProductId() %></td>
					<td align="left"><%=products.get(10).getProductName() %></td>
					<td align="center"><%=products.get(10).getProductPrice() %></td>
					<td align="center"><%=quantity.get(10) %></td>
					<td align="center"><%=price.get(10) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(11).getProductId() %></td>
					<td align="left"><%=products.get(11).getProductName() %></td>
					<td align="center"><%=products.get(11).getProductPrice() %></td>
					<td align="center"><%=quantity.get(11) %></td>
					<td align="center"><%=price.get(11) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(12).getProductId() %></td>
					<td align="left"><%=products.get(12).getProductName() %></td>
					<td align="center"><%=products.get(12).getProductPrice() %></td>
					<td align="center"><%=quantity.get(12) %></td>
					<td align="center"><%=price.get(12) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(13).getProductId() %></td>
					<td align="left"><%=products.get(13).getProductName() %></td>
					<td align="center"><%=products.get(13).getProductPrice() %></td>
					<td align="center"><%=quantity.get(13) %></td>
					<td align="center"><%=price.get(13) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(14).getProductId() %></td>
					<td align="left"><%=products.get(14).getProductName() %></td>
					<td align="center"><%=products.get(14).getProductPrice() %></td>
					<td align="center"><%=quantity.get(14) %></td>
					<td align="center"><%=price.get(14) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(15).getProductId() %></td>
					<td align="left"><%=products.get(15).getProductName() %></td>
					<td align="center"><%=products.get(15).getProductPrice() %></td>
					<td align="center"><%=quantity.get(15) %></td>
					<td align="center"><%=price.get(15) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(16).getProductId() %></td>
					<td align="left"><%=products.get(16).getProductName() %></td>
					<td align="center"><%=products.get(16).getProductPrice() %></td>
					<td align="center"><%=quantity.get(16) %></td>
					<td align="center"><%=price.get(16) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(17).getProductId() %></td>
					<td align="left"><%=products.get(17).getProductName() %></td>
					<td align="center"><%=products.get(17).getProductPrice() %></td>
					<td align="center"><%=quantity.get(17) %></td>
					<td align="center"><%=price.get(17) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(18).getProductId() %></td>
					<td align="left"><%=products.get(18).getProductName() %></td>
					<td align="center"><%=products.get(18).getProductPrice() %></td>
					<td align="center"><%=quantity.get(18) %></td>
					<td align="center"><%=price.get(18) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(19).getProductId() %></td>
					<td align="left"><%=products.get(19).getProductName() %></td>
					<td align="center"><%=products.get(19).getProductPrice() %></td>
					<td align="center"><%=quantity.get(19) %></td>
					<td align="center"><%=price.get(19) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(20).getProductId() %></td>
					<td align="left"><%=products.get(20).getProductName() %></td>
					<td align="center"><%=products.get(20).getProductPrice() %></td>
					<td align="center"><%=quantity.get(20) %></td>
					<td align="center"><%=price.get(20) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(21).getProductId() %></td>
					<td align="left"><%=products.get(21).getProductName() %></td>
					<td align="center"><%=products.get(21).getProductPrice() %></td>
					<td align="center"><%=quantity.get(21) %></td>
					<td align="center"><%=price.get(21) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(22).getProductId() %></td>
					<td align="left"><%=products.get(22).getProductName() %></td>
					<td align="center"><%=products.get(22).getProductPrice() %></td>
					<td align="center"><%=quantity.get(22) %></td>
					<td align="center"><%=price.get(22) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(23).getProductId() %></td>
					<td align="left"><%=products.get(23).getProductName() %></td>
					<td align="center"><%=products.get(23).getProductPrice() %></td>
					<td align="center"><%=quantity.get(23) %></td>
					<td align="center"><%=price.get(23) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(24).getProductId() %></td>
					<td align="left"><%=products.get(24).getProductName() %></td>
					<td align="center"><%=products.get(24).getProductPrice() %></td>
					<td align="center"><%=quantity.get(24) %></td>
					<td align="center"><%=price.get(24) %></td>
				</tr>
				<tr>
				<td colspan="3" align="center">Total</td>
				<td align="center"><%=totalQuantity %> Kg</td>
				<td align="center">Rs <%=totalPrice %></td>
				</tr>
				<tr>
				<td colspan="3" align="center">GST</td>
				<td align="center">12%</td>
				<td align="center">Rs <%=gst %></td>
				</tr>
				<tr>
				<td colspan="3" align="center">Labour</td>
				<td align="center">25 Rs/50kg</td>
				<td align="center">Rs <%=labour %></td>
				</tr>
				
				<tr>
				<td colspan="3" align="center">Gross Total</td>
				<td align="center">--</td>
				<td align="center">Rs <%=grosstotal %></td>
				</tr>
				<tr>
				<td colspan="5" align="right">Khalsa Enterprises(Atewali)</td>
				</tr>
				
			</table>
		 <div align="right">
		 <br>
		 <br>
		 <br>
 <h5>Signature</h5>
  </div>
	</div>
					
				<div class="navbar">

 <div class="logout">
 <a href="/makeSlip">Back</a>
  </div>
	
	</div>

	

</body>
</html>