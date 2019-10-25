<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="FormServlet" method="post" class="col-md-8">
			<input type="hidden" name="option" value="${option}">
			<div class="form-group">
				<label for="ptitle">Posting Title</label> <input type="text"
					class="form-control" id="ptitle" name="ptitle">
			</div>
			<div class="form-group">
				<label for="city">City or Neighbourhood</label> <input type="text"
					class="form-control" id="city" name="city">
			</div>
			<div class="form-group">
				<label for="pcode"></label>Postal Code<input type="text"
					class="form-control" id="pcode" name="pcode">
			</div>
			<label for="comment">Description:</label>
			<textarea class="form-control" rows="5" name="description"></textarea>
			<h2>Contact info</h2>
			<div class="form-group">
				<label for="email">Email address:</label> <input type="email"
					class="form-control" name="email" id="email">
			</div>
			<div class="form-group">
				<label for="phone">Phone:</label> <input type="number"
					class="form-control" name="phone">
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>