<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:forEach items="${list}" var="z">
			<form action="UserInfoServlet" method="post">
				<div class="jumbotron">
					<p class="lead">${z.ptitle}<p>
					<p class="lead">${z.description}</p>
					<hr class="my-4">
					<p><b>Mail to:</b> ${z.email}</p>
					<p><b>Contact No: </b> ${z.phone}</p>
					<hr class="my-4">
					<p><b>City: </b> ${z.city}</p>
					<p> <b>Postal Code: </b>${z.pcode}</p>

					<input type="submit" class="btn btn-primary btn-lg" value="reply">
			</form>
	</div>
	</c:forEach>
	</div>
</body>
</html>