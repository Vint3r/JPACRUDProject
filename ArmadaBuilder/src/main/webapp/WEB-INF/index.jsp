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
	<c:choose>
		<c:when test="${success == true}">
			<h4 style="color:Green;">Ship was successfully deleted!</h4>
		</c:when>
		<c:when test="${success == false}"><h4 style="color:Green;">Delete failed, try again</h4></c:when>
	</c:choose>
	<div class=“container”>
		<div class=“row”>
			<div class=“col-3”></div>
			<div class="container">
				<div class="row">
					<div class="col-3">
						<a href="getShipList.do" class="btn btn-outline-success"
							role="button" aria-disabled="true">Get all ships in database</a><br>
						<a href="goAddShip.do" class="btn btn-outline-success"
							role="button" aria-disabled="true">Add a ship</a><br>
					</div>
					<div class="col-6">
						<form:form action="getShipAlign.do" method="GET"
							modelAttribute="ship">
							<form:label path="alignment" style="color:GREEN;">Alignment</form:label>
							<form:input path="alignment" />
							<form:errors path="alignment" />
							<input type="submit" value="Search"
								class="btn btn-outline-success" role="button"
								aria-disabled="true" />
							<p style="color:GREEN;">Search the database for all ships under one alignment</p>
							<br>
						</form:form>
						<br> <br> <br>
						<form:form action="getShipPoints.do" method="GET"
							modelAttribute="ship">
							<form:label path="pointCost" style="color:Blue;">Points:</form:label>
							<form:input path="pointCost" />
							<form:errors path="pointCost" />
							<input type="submit" value="Search"
								class="btn btn-outline-primary" role="button"
								aria-disabled="true" />
							<p style= "color:Blue;">Search the database for all ships under the entered point
								count</p>
							<br>
						</form:form>
						<br> <br> <br>
						<form:form action="getShipClass.do" method="GET"
							modelAttribute="ship">
							<form:label path="shipClass" style="color:RED;">Class:</form:label>
							<form:input path="shipClass" />
							<form:errors path="shipClass" />
							<input type="submit" value="Search"
								class="btn btn-outline-danger" role="button"
								aria-disabled="true" />
							<p style="color:RED;">Search the database for all ships with the entered text in
								their class type</p>
							<br>
						</form:form>
						<br> <br> <br>
					</div>
					<div class="col-3">
						<a href="goHome.do" class="btn btn-outline-success" role="button"
							aria-disabled="true">Home</a><br>
					</div>
				</div>
			</div>

			<div class=“col-3”></div>
		</div>
	</div>
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

