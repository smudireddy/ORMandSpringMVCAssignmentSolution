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

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: center;
	padding: 8px;
	border-width: 0px
}

th {
	background-color: #0A8A0A;
	color: white;
	font-size: 15pt;
}

tr:nth-child(even) {
	background-color: #D3D3D3;
}

h3 {
	text-align: left;
}

input[type=submit] {
	padding: 10px;
	margin: 4px 2px;
	background-color: lightgray;
	font-size: 12pt;
	border: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 10px;
}
</style>

<title>Customer Relationship Management</title>
</head>
<body>

	<div class="divouter">

		<div class="divheader">
			<h1 style="text-align: center;">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
		</div>
		<br> <br> <br>

		<form action="showAddFrom" method="get">
			<input type="submit" value="Add Customer" align="left">
		</form>

		<br>

		<c:if test="${!empty customerlist}">
			<table align="left" border="1">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
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
	</div>
</body>
</html>