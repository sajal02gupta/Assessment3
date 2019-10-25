<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Replyform</title>
</head>
<body>
	<div>
		<form method="post" action="submitted.jsp">
			<div class="form-group">
				<label for="exampleInputEmail1">User's name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Your name.." name="username"> 
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email" name="email"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Contact No.</label> <input
					type="number" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Your Phone no.." name="phone"> 
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>