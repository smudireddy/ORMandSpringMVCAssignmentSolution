<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.divouter {
	padding-top: 10px;
	padding-left: 100px;
	padding-right: 100px;
}

.divheader {
	background-color: #0A8A0A;
	text-align: center;
	height: 80px;
	align-content: center;
	padding-top: 10px;
}

h1 {
	text-align: left;
}

a, label {
	font-size: 12pt;
}

.tdinput {
    width: 40%;   
	height: 50px;
}

.tdlable {
    width: 15%;  
	height: 50px;
}


input {
	background-color: #BFD7ED;
	font-size: 12pt;
	border: 1px;
	border-radius: 10px;
	padding: 10px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Relationship Management</title>
</head>
<body>

	<div class="divouter">
		<div class="divheader">
			<h1 style="text-align: center; color: white;">CUSTOMER
				RELATIONSHIP MANAGEMENT</h1>
		</div>
		<br> <br> <br>

		<h3>Save Customer</h3>
		<form method="POST" action="saveCustomer">
			<table>

				<tr>
					<td><input type="hidden" name="customerId"
						value="${customer.id}" /></td>
				</tr>

				<tr>
					<td class="tdlable"><label>First Name: </label></td>
					<td class="tdinput"><input type="text" name="firstName"
						value="${customer.firstName}" required/></td>
				</tr>

				<tr>
					<td class="tdlable"><label>Last Name: </label></td>
					<td class="tdinput"><input type="text" name="lastName"
						value="${customer.lastName}" /></td>
				</tr>
				<tr>
					<td class="tdlable"><label>Email: </label></td>
					<td class="tdinput"><input type="email" name="email" value="${customer.email}" required /></td>
				</tr>
				<tr>
				
				</tr>

				<tr>
					<td colspan="3" style="text-align:center" align="center"><input
						type="submit" value="Save" /></td>
				</tr>

			</table>
		</form>
		<br>
		<h3>
			<a href="list">Back to List</a>
		</h3>
	</div>

</body>
</html>