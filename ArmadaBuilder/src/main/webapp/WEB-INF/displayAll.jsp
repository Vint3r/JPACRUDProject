<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="https://i.imgur.com/o1GOfK6.jpg">
<c:forEach var="ship" items="${ships}">
<div class="container">
		<div class="row">
			<div class="col-3"><a href="goHome.do" role="button" aria-disabled="true"
					class="btn btn-outline-primary">Return Home</a></div>
			<div class="col-6">
				<h2 style="color:GREEN;">${ship.shipClass}(${ship.alignment})</h2>
				<p style="color:GREEN;">Command Value: ${ship.command}, Engineering Value: ${ship.engineering}, Squadron Value: ${ship.squadron}</p>
				<p style="color:GREEN;">Hull Points: ${ship.hull}</p>
				<br>
				<br>
				<br>
			</div>
			<div class="col-3"><a href="getAllShipInfo.do?sid=${ship.id}" class="btn btn-outline-primary"
						role="button" aria-disabled="true">Get More Info Here!</a></div>
		</div>
	</div>
<br>
</c:forEach>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>