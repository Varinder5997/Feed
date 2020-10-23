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
	List<Double>pritein=(List<Double>)request.getAttribute("protein");
	float totalQuantity=(float)request.getAttribute("totalQuantity");
	double totalProtein=(double)request.getAttribute("totalProtein");
	float pp=(float)request.getAttribute("pp");
	
	%>
			<div class="navbar">

 <div class="logout">
 <a href="/checkProtein">Back</a>
  </div>

    </div>
		<div align="center">
		<h1>Protein</h1>
	
			<table border="1" cellpadding="10" >
			<tr>
			<td>Product Id  </td>
			<td>Product Name  </td>
			<td>Protein Percentage </td>
			<td>Product Quantity  </td>
			<td>Protein </td>
			
			</tr>
			<tr>
					<td align="center"><%=products.get(0).getProductId() %></td>
					<td align="left"><%=products.get(0).getProductName() %></td>
					<td align="center"><%=products.get(0).getProtein() %>%</td>
					<td align="center"><%=quantity.get(0) %></td>
					<td align="center"><%=pritein.get(0) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(1).getProductId() %></td>
					<td align="left"><%=products.get(1).getProductName() %></td>
					<td align="center"><%=products.get(1).getProtein() %>%</td>
					<td align="center"><%=quantity.get(1) %></td>
					<td align="center"><%=pritein.get(1) %></td>
				</tr>		
				<tr>
					<td align="center"><%=products.get(2).getProductId() %></td>
					<td align="left"><%=products.get(2).getProductName() %></td>
					<td align="center"><%=products.get(2).getProtein() %>%</td>
					<td align="center"><%=quantity.get(2) %></td>
					<td align="center"><%=pritein.get(2) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(3).getProductId() %></td>
					<td align="left"><%=products.get(3).getProductName() %></td>
					<td align="center"><%=products.get(3).getProtein() %>%</td>
					<td align="center"><%=quantity.get(3) %></td>
					<td align="center"><%=pritein.get(3) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(4).getProductId() %></td>
					<td align="left"><%=products.get(4).getProductName() %></td>
					<td align="center"><%=products.get(4).getProtein() %>%</td>
					<td align="center"><%=quantity.get(4) %></td>
					<td align="center"><%=pritein.get(4) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(5).getProductId() %></td>
					<td align="left"><%=products.get(5).getProductName() %></td>
					<td align="center"><%=products.get(5).getProtein() %>%</td>
					<td align="center"><%=quantity.get(5) %></td>
					<td align="center"><%=pritein.get(5) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(6).getProductId() %></td>
					<td align="left"><%=products.get(6).getProductName() %></td>
					<td align="center"><%=products.get(6).getProtein() %>%</td>
					<td align="center"><%=quantity.get(6) %></td>
					<td align="center"><%=pritein.get(6) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(7).getProductId() %></td>
					<td align="left"><%=products.get(7).getProductName() %></td>
					<td align="center"><%=products.get(7).getProtein() %>%</td>
					<td align="center"><%=quantity.get(7) %></td>
					<td align="center"><%=pritein.get(7) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(8).getProductId() %></td>
					<td align="left"><%=products.get(8).getProductName() %></td>
					<td align="center"><%=products.get(8).getProtein() %>%</td>
					<td align="center"><%=quantity.get(8) %></td>
					<td align="center"><%=pritein.get(8) %></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(9).getProductId() %></td>
					<td align="left"><%=products.get(9).getProductName() %></td>
					<td align="center"><%=products.get(9).getProtein() %>%</td>
					<td align="center"><%=quantity.get(9) %></td>
					<td align="center"><%=pritein.get(9) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(10).getProductId() %></td>
					<td align="left"><%=products.get(10).getProductName() %></td>
					<td align="center"><%=products.get(10).getProtein() %>%</td>
					<td align="center"><%=quantity.get(10) %></td>
					<td align="center"><%=pritein.get(10) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(11).getProductId() %></td>
					<td align="left"><%=products.get(11).getProductName() %></td>
					<td align="center"><%=products.get(11).getProtein() %>%</td>
					<td align="center"><%=quantity.get(11) %></td>
					<td align="center"><%=pritein.get(11) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(12).getProductId() %></td>
					<td align="left"><%=products.get(12).getProductName() %></td>
					<td align="center"><%=products.get(12).getProtein() %>%</td>
					<td align="center"><%=quantity.get(12) %></td>
					<td align="center"><%=pritein.get(12) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(13).getProductId() %></td>
					<td align="left"><%=products.get(13).getProductName() %></td>
					<td align="center"><%=products.get(13).getProtein() %>%</td>
					<td align="center"><%=quantity.get(13) %></td>
					<td align="center"><%=pritein.get(13) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(14).getProductId() %></td>
					<td align="left"><%=products.get(14).getProductName() %></td>
					<td align="center"><%=products.get(14).getProtein() %>%</td>
					<td align="center"><%=quantity.get(14) %></td>
					<td align="center"><%=pritein.get(14) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(15).getProductId() %></td>
					<td align="left"><%=products.get(15).getProductName() %></td>
					<td align="center"><%=products.get(15).getProtein() %>%</td>
					<td align="center"><%=quantity.get(15) %></td>
					<td align="center"><%=pritein.get(15) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(16).getProductId() %></td>
					<td align="left"><%=products.get(16).getProductName() %></td>
					<td align="center"><%=products.get(16).getProtein() %>%</td>
					<td align="center"><%=quantity.get(16) %></td>
					<td align="center"><%=pritein.get(16) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(17).getProductId() %></td>
					<td align="left"><%=products.get(17).getProductName() %></td>
					<td align="center"><%=products.get(17).getProtein() %>%</td>
					<td align="center"><%=quantity.get(17) %></td>
					<td align="center"><%=pritein.get(17) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(18).getProductId() %></td>
					<td align="left"><%=products.get(18).getProductName() %></td>
					<td align="center"><%=products.get(18).getProtein() %>%</td>
					<td align="center"><%=quantity.get(18) %></td>
					<td align="center"><%=pritein.get(18) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(19).getProductId() %></td>
					<td align="left"><%=products.get(19).getProductName() %></td>
					<td align="center"><%=products.get(19).getProtein() %>%</td>
					<td align="center"><%=quantity.get(19) %></td>
					<td align="center"><%=pritein.get(19) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(20).getProductId() %></td>
					<td align="left"><%=products.get(20).getProductName() %></td>
					<td align="center"><%=products.get(20).getProtein() %>%</td>
					<td align="center"><%=quantity.get(20) %></td>
					<td align="center"><%=pritein.get(20) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(21).getProductId() %></td>
					<td align="left"><%=products.get(21).getProductName() %></td>
					<td align="center"><%=products.get(21).getProtein() %>%</td>
					<td align="center"><%=quantity.get(21) %></td>
					<td align="center"><%=pritein.get(21) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(22).getProductId() %></td>
					<td align="left"><%=products.get(22).getProductName() %></td>
					<td align="center"><%=products.get(22).getProtein() %>%</td>
					<td align="center"><%=quantity.get(22) %></td>
					<td align="center"><%=pritein.get(22) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(23).getProductId() %></td>
					<td align="left"><%=products.get(23).getProductName() %></td>
					<td align="center"><%=products.get(23).getProtein() %>%</td>
					<td align="center"><%=quantity.get(23) %></td>
					<td align="center"><%=pritein.get(23) %></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(24).getProductId() %></td>
					<td align="left"><%=products.get(24).getProductName() %></td>
					<td align="center"><%=products.get(24).getProtein() %>%</td>
					<td align="center"><%=quantity.get(24) %></td>
					<td align="center"><%=pritein.get(24) %></td>
				</tr>
				<tr>
				<td colspan="3" align="center">Total</td>
				<td align="center"><%=totalQuantity %> Kg</td>
				<td align="center"><%=totalProtein %>kg</td>
				</tr>
				<tr>
				<td colspan="3" align="center">Proteiin Percentage</td>
				<td align="center">%</td>
				<td align="center"><%=pp %>%</td>
				</tr>
				
				<tr>
				<td colspan="5" align="right">Khalsa Enterprises(Atewali)</td>
				</tr>
				
			</table>
		
	</div>
	
</body>
</html>