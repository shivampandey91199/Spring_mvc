<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Data</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #007BFF;
	color: white;
}
</style>
</head>
<body>
	<div class="container">
		<h1>User Data</h1>
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Framework</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${list }" var="d">
				<tr>
					<th scope="row">${d.id }</th>
					<td>${d.name }</td>
					<td>${d.email }</td>
					<td>${d.framework }</td>
					<td ><a href="Query/${d.id }" class="btn btn-outline-info">Query</a></td>
					<td ><a href="edit/${d.id }" class="btn btn-outline-primary">Update</a></td>
					<td><a href="delete/${d.id }"  class="btn btn-outline-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
