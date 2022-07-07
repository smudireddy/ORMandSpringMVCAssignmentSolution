<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	width: 80%;
	font-size: 16px;
}

#crmheader h1 {
	vertical-align: middle;
	text-align: center;
}

table {
	width: 80%;
	border-collapse: collapse;
}

th, td {
	text-align: center;
	padding: 8px;
	border-width: 0px
}

tr:nth-child(even) {
	background-color: #D3D3D3;
}

h3 {
	text-align: left;
}
</style>

<title>Customer Relationship Management</title>
</head>
<body>

	<div class="crmheader" id="crmheader">
		<p />
		<h1>CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		<p />
	</div>
	<br>
	<br>
	<br>

	<form action="showAddFrom">
		<input type="submit" value="Add Customer">
	</form>
	<br>
	<c:if test="${!empty customerlist}">
		<table align="center" border="1">
			<tr>
				<th style="background-color: #0A8A0A">First Name</th>
				<th style="background-color: #0A8A0A">Last Name</th>
				<th style="background-color: #0A8A0A">Email</th>
				<th style="background-color: #0A8A0A">Action</th>
			</tr>

			<c:forEach items="${customerlist}" var="customer">
				<tr>
					<td><c:out value="${customer.firstName}" /></td>
					<td><c:out value="${customer.lastName}" /></td>
					<td><c:out value="${customer.email}" /></td>
					<td align="center"><a
						href="showUpdateFrom?customerId=${customer.id}">Edit</a> | <a
						href="deleteCustomer?customerId=${customer.id}"
						onclick="if (!confirm('Are you sure you want to delete the student?'))">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>