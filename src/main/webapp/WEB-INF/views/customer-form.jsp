<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
caption {
	padding: 20px;
}

div {
	height: 100px;
	background-color: #0A8A0A;
}

h1 {
	text-align: left;
}

#crmheader {
	text-align: center;
	width: 100%;
}

#crmheader h1 {
	vertical-align: middle
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Relationship Management</title>
</head>
<body>

	<div class="crmheader" id="crmheader">
		<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>
	</div>
	<br>
	<br>
	<br>

	<h3>Save Customer</h3>
	<form method="POST" action="saveCustomer">
		<table>

			<tr>
			    <td><input type="hidden" name="customerId"
					value="${customer.id}" /></td>
			</tr>

			<tr>
				<td><label>First Name: </label></td>
				<td><input type="text" name="firstName"
					value="${customer.firstName}" size="100"/></td>
			</tr>

			<tr>
				<td><label>Last Name: </label></td>
				<td><input type="text" name="lastName"
					value="${customer.lastName}" size="100"/></td>
			</tr>
			<tr>
				<td><label>Email: </label></td>
				<td><input type="email" name="email" value="${customer.email}" size="100"/></td>
			</tr>

			<tr>
				<td colspan="3" style="text-align: center" align="center"><input
					type="submit" value="Save" /></td>
			</tr>

		</table>
	</form>
	<br>
	<h3>
		<a href="list">Back to List</a>
	</h3>

</body>
</html>