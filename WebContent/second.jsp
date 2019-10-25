<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<div class="container">
	<form action="UserServlet" method="post">
	<div class="radio">
		<label><input type="radio" name="optradio" value="joboffered"> Job
			offered</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="gigoffered">Gig offered</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="resume/job">Resume/ Job
			wanted</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="housingoffered">Housing
			offered</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="housingwanted">Housing
			wanted</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="forsalebyowner">For sale by Owner</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="forsalebydealer">For sale by dealer</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="wantedbyowner">Wanted by owner</label>
	</div>
	<div class="radio">
		<label><input type="radio" name="optradio" value="wantedbydealer">Wanted by dealer</label>
	</div>
	<input type="submit" class="btn btn-primary" value="Continue">
	</form>	
	</div>
	
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>