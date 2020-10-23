<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
th,td {
	color: white;
}
body {
	background-color: black;
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
	%>
		<div class="navbar">

 <div class="logout">
 <a href="/login-page">Home</a>
  </div>

    </div>
	
		<div align="center">
		<h1 style="color: white;">Estimate</h1>

		<form:form action="/calculate-protein" method="POST" modelAttribute="productDto">

			<table  border="1" cellpadding="10" >
			<tr>
			<td>Product Id  </td>
			<td>Product Name  </td>
			<td>Protein  </td>
			<td>Product Quantity  </td>
			
			</tr>
			<tr>
					<td align="center"><%=products.get(0).getProductId() %></td>
					<td align="left"><%=products.get(0).getProductName() %></td>
					<td align="center"><%=products.get(0).getProtein() %>%</td>
					<td align="center"><form:input path="makki" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(1).getProductId() %></td>
					<td align="left"><%=products.get(1).getProductName() %></td>
					<td align="center"><%=products.get(1).getProtein() %>%</td>
					<td align="center"><form:input path="bajra" id="guestPassword" /></td>
				</tr>		
				<tr>
					<td align="center"><%=products.get(2).getProductId() %></td>
					<td align="left"><%=products.get(2).getProductName() %></td>
					<td align="center"><%=products.get(2).getProtein() %>%</td>
					<td align="center"><form:input path="choker" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(3).getProductId() %></td>
					<td align="left"><%=products.get(3).getProductName() %></td>
					<td align="center"><%=products.get(3).getProtein() %>%</td>
					<td align="center"><form:input path="saronDiKhall" id="guestPassword" /></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(4).getProductId() %></td>
					<td align="left"><%=products.get(4).getProductName() %></td>
					<td align="center"><%=products.get(4).getProtein() %>%</td>
					<td align="center"><form:input path="wadaveanDiKhall" id="guestPassword" /></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(5).getProductId() %></td>
					<td align="left"><%=products.get(5).getProductName() %></td>
					<td align="center"><%=products.get(5).getProtein() %>%</td>
					<td align="center"><form:input path="wadeve" id="guestPassword" /></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(6).getProductId() %></td>
					<td align="left"><%=products.get(6).getProductName() %></td>
					<td align="center"><%=products.get(6).getProtein() %>%</td>
					<td align="center"><form:input path="namak" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(7).getProductId() %></td>
					<td align="left"><%=products.get(7).getProductName() %></td>
					<td align="center"><%=products.get(7).getProtein() %>%</td>
					<td align="center"><form:input path="mithaSoda" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(8).getProductId() %></td>
					<td align="left"><%=products.get(8).getProductName() %></td>
					<td align="center"><%=products.get(8).getProtein() %>%</td>
					<td align="center"><form:input path="tall" id="guestPassword" /></td>
				</tr>
					<tr>
					<td align="center"><%=products.get(9).getProductId() %></td>
					<td align="left"><%=products.get(9).getProductName() %></td>
					<td align="center"><%=products.get(9).getProtein() %>%</td>
					<td align="center"><form:input path="bipassFat" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(10).getProductId() %></td>
					<td align="left"><%=products.get(10).getProductName() %></td>
					<td align="center"><%=products.get(10).getProtein() %>%</td>
					<td align="center"><form:input path="miniMixture" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(11).getProductId() %></td>
					<td align="left"><%=products.get(11).getProductName() %></td>
					<td align="center"><%=products.get(11).getProtein() %>%</td>
					<td align="center"><form:input path="taramira" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(12).getProductId() %></td>
					<td align="left"><%=products.get(12).getProductName() %></td>
					<td align="center"><%=products.get(12).getProtein() %>%</td>
					<td align="center"><form:input path="sera" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(13).getProductId() %></td>
					<td align="left"><%=products.get(13).getProductName() %></td>
					<td align="center"><%=products.get(13).getProtein() %>%</td>
					<td align="center"><form:input path="buffer" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(14).getProductId() %></td>
					<td align="left"><%=products.get(14).getProductName() %></td>
					<td align="center"><%=products.get(14).getProtein() %>%</td>
					<td align="center"><form:input path="pallse" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(15).getProductId() %></td>
					<td align="left"><%=products.get(15).getProductName() %></td>
					<td align="center"><%=products.get(15).getProtein() %>%</td>
					<td align="center"><form:input path="doc" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(16).getProductId() %></td>
					<td align="left"><%=products.get(16).getProductName() %></td>
					<td align="center"><%=products.get(16).getProtein() %>%</td>
					<td align="center"><form:input path="biscuit" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(17).getProductId() %></td>
					<td align="left"><%=products.get(17).getProductName() %></td>
					<td align="center"><%=products.get(17).getProtein() %>%</td>
					<td align="center"><form:input path="kanak" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(18).getProductId() %></td>
					<td align="left"><%=products.get(18).getProductName() %></td>
					<td align="center"><%=products.get(18).getProtein() %>%</td>
					<td align="center"><form:input path="shakar" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(19).getProductId() %></td>
					<td align="left"><%=products.get(19).getProductName() %></td>
					<td align="center"><%=products.get(19).getProtein() %>%</td>
					<td align="center"><form:input path="soeabeen" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(20).getProductId() %></td>
					<td align="left"><%=products.get(20).getProductName() %></td>
					<td align="center"><%=products.get(20).getProtein() %>%</td>
					<td align="center"><form:input path="gharalu" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(21).getProductId() %></td>
					<td align="left"><%=products.get(21).getProductName() %></td>
					<td align="center"><%=products.get(21).getProtein() %>%</td>
					<td align="center"><form:input path="toxy" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(22).getProductId() %></td>
					<td align="left"><%=products.get(22).getProductName() %></td>
					<td align="center"><%=products.get(22).getProtein() %>%</td>
					<td align="center"><form:input path="tm" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(23).getProductId() %></td>
					<td align="left"><%=products.get(23).getProductName() %></td>
					<td align="center"><%=products.get(23).getProtein() %>%</td>
					<td align="center"><form:input path="calside" id="guestPassword" /></td>
				</tr>
				<tr>
					<td align="center"><%=products.get(24).getProductId() %></td>
					<td align="left"><%=products.get(24).getProductName() %></td>
					<td align="center"><%=products.get(24).getProtein() %>%</td>
					<td align="center"><form:input path="saronDoc" id="guestPassword" /></td>
				</tr>
				<tr></tr>
				<tr>
					<div align="right"><td colspan="5" align="right"><button type="submit" style="background-color: red;border-color: red;">Check</button></td>
					</div>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>