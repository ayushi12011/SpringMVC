<%@page isELIgnored="false" %>
<%@page import="java.util.List"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css"
	integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
<!-- <h2>Hello World!</h2> -->
<h1 class="text-center">
		<a href="home">Add User</a>
	</h1>
	<%-- <h1>${list }</h1> --%>

	<div class="container mt-5">

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Address</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Edit</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="s">
					<tr>
						<th scope="row">${s.id}</th>
						<td>${s.name}</td>
						<td>${s.contact}</td>
						<td>${s.address}</td>
						<td>${s.email}</td>
						<td>${s.password}</td>
						<td><a href="update/${s.id }"><i class="btn btn-success">Edit</i></a></td>
						<td><a href="delete/${s.id }"><i class="btn btn-danger">Delete</i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>

<%-- <h2>${name}</h2>
<h2>${rollno}</h2>
<h2>${active}</h2>
<h2>${per}</h2>
<h2>${list}</h2> --%>
	<%-- <c:forEach items="${list}" var = "s">
			<h2>${s}</h2>
			</c:forEach> --%>
			
	