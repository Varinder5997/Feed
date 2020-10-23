<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Add new User</title>
<script type="text/javascript">
	$(document)
			.ready(
						function(){
						
							$('#emailIdcheck').hide();
							var email_err = true;
							
							
							$('#guestNamecheck').hide();
							var name_err =true;
							
							$('#passwordcheck').hide();
							var password_err =true;
							
							$('#addresscheck').hide();
							var address_err =true;
							
							
							$('#emailId').keyup(function(){
								email_check();
							});
							
							$('#guestName').keyup(function(){
								name_check();
							});
							
							$('#guestPassword').keyup(function(){
								password_check();
							});
							
							$('#address').keyup(function(){
								address_check();
							});
							
							
							function email_check(){
								var email = $('#emailId').val();
								var emailtest=/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
								if(email == ''){
									$('#emailIdcheck').show();
									$('#emailIdcheck').html(
											"Pleace fill the Email");
									$('#emailIdcheck').focus();
									$('#emailIdcheck').css('color','red');
									email_err =false;
									return false;
								}
								
								else if(!emailtest.test(email)){
									$('#emailIdcheck').show();
									$('#emailIdcheck').html(
											"Invalid EmailId");
									$('#emailIdcheck').focus();
									$('#emailIdcheck').css('color','red');
									email_err =false;
									return false;
								}else{
									$('#emailIdcheck').hide();
								}
							}
							
							function name_check(){
								var name = $('#guestName').val();
								var nametest=/^[A-Z][a-zA-z]{2,11}$/
								if(name ==''){
									$('#guestNamecheck').show();
									$('#guestNamecheck').html(
											"Pleace fill the Name");
									$('#guestNamecheck').focus();
									$('#guestNamecheck').css('color','red');
									name_err =false;
									return false;
								}
								else if(name[0].toUpperCase() != name[0]){
									$('#guestNamecheck').show();
									$('#guestNamecheck').show();
									$('#guestNamecheck').html(
											"First latter must be uppercase");
									$('#guestNamecheck').focus();
									$('#guestNamecheck').css('color','red');
									name_err =false;
									return false;
									
								}else if(name.length<3 || name.length>15){
									$('#guestNamecheck').show();
									$('#guestNamecheck').html(
											"Length of Name must be in between 3 to 15");
									$('#guestNamecheck').focus();
									$('#guestNamecheck').css('color','red');
									name_err =false;
									return false;
								}
								else if(!nametest.test(name)){
									$('#guestNamecheck').show();
									$('#guestNamecheck').html(
											"Invalid Name");
									$('#guestNamecheck').focus();
									$('#guestNamecheck').css('color','red');
									name_err =false;
									return false;
								}else{
									$('#guestNamecheck').hide();
								}
							}
							function password_check(){
								var password = $('#guestPassword').val();
								var passwordtest=/^[A-Z][a-zA-z]{2,11}$/
								if(password ==''){
									$('#passwordcheck').show();
									$('#passwordcheck').html(
											"Pleace fill the Password");
									$('#passwordcheck').focus();
									$('#passwordcheck').css('color','red');
									password_err =false;
									return false;
								}
								else if(password.length<3 || password.length>10){
									$('#passwordcheck').show();
									$('#passwordcheck').html(
											"Length of Password must be in between 3 to 15");
									$('#passwordcheck').focus();
									$('#passwordcheck').css('color','red');
									password_err =false;
									return false;
								}
								else if(!passwordtest.test(password)){
									$('#passwordcheck').show();
									$('#passwordcheck').html(
											"Invalid Password");
									$('#passwordcheck').focus();
									$('#passwordcheck').css('color','red');
									password_err =false;
									return false;
								}else{
									$('#passwordcheck').hide();
								}
							}
							address_check=()=>{
								var address = $('#address').val();
								var addresstest=/^[A-Z][a-zA-z]{2,11}$/
								if(address ==''){
									$('#addresscheck').show();
									$('#addresscheck').html(
											"Pleace fill the Address");
									$('#addresscheck').focus();
									$('#addresscheck').css('color','red');
									address_err =false;
									return false;
								}
								else if(address.length<3 || address.length>20){
									$('#addresscheck').show();
									$('#addresscheck').html(
											"Length of Address must be in between 3 to 20");
									$('#addresscheck').focus();
									$('#addresscheck').css('color','red');
									address_err =false;
									return false;
								}
								else if(!addresstest.test(address)){
									$('#addresscheck').show();
									$('#addresscheck').html(
											"Invalid Address");
									$('#addresscheck').focus();
									$('#addresscheck').css('color','red');
									address_err =false;
									return false;
								}else{
									$('#addresscheck').hide();
								}
							}
							$('#submitbtn')
							.click(
									function(){
										email_err = true;
										name_err = true;
										password_err = true;
									
										
										
										email_check();
										name_check();
										password_check();
										

										if(email_err == true
												&& name_err == true
												&& password_err == true
												
												){
										
											return true;
										}else{
											return false;
										}										
									});
						});

</script>
<style type="text/css">
body{
background-image: url("/resources/images/BabaBandaSingh.png" );
 background-size:105%;
 background-repeat: no-repeat;
}
table {
	 th, td { 
                width:150px; 
                text-align:center; 
                padding:5px ;
              cellpadding="20"
            }
}

</style>

</head>
<body>

	<div align="left"> 
		<h1>&nbsp;&nbsp;&nbsp; Add New User</h1>
		<br />
		<form:form action="/save-user" method="POST" modelAttribute="user">

			<table cellpadding="10">
			<tr>
					<td>User EmailId:</td>
					<td><form:input path="userEmail" id="emailId" /></td>
					<td><h7 id="emailIdcheck"></h7></td>
					

				</tr>
				
				<tr>
					<td>User Name:</td>
					<td><form:input path="userName" /></td>
					<td><h7 id="guestNamecheck"></h7></td>

				</tr>

				<tr>
					<td>User Password:</td>
					<td><form:input type ="password" path="password" id="guestPassword" /></td>
					<td><h7 id="passwordcheck"></h7></td>
				</tr>
		

				<tr>
					<td colspan="2" align="center"><button type="submit">Save</button></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>

</html>