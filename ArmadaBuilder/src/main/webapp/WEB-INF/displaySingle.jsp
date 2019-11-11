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
			<h4 style="color:Green;">Update Successful</h4>
		</c:when>
		<c:when test="${success == false}"><h4 style="color:Green;">Update Failed</h4></c:when>
	</c:choose>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<a href="goHome.do" role="button" aria-disabled="true"
					class="btn btn-outline-primary">Return Home</a><br>
				<br>
				<br>
				<form:form action="delete.do" method="GET" modelAttribute="ship">
					<form:label path="id" value="${ship.id}"></form:label>
					<form:hidden path="id" value="${ship.id}" />
					<form:errors path="id" value="${ship.id}" />
					<input type="submit" value="Delete Ship" style="color:BLUE;"/>
				</form:form>
			</div>
			<div class="col-6">
				<h2 style="color:GREEN">${ship.shipClass}(${ship.alignment})</h2>
				<p style="color:GREEN">Command Value: ${ship.command}, Engineering Value:
					${ship.engineering}, Squadron Value: ${ship.squadron}</p>
				<p style="color:GREEN">Hull Points: ${ship.hull}</p>
				<ul>
					<li style="color:GREEN">Forward Shields: ${ship.forwardShields}</li>
					<li style="color:GREEN">Right Shields: ${ship.rightShields}</li>
					<li style="color:GREEN">Left Shields: ${ship.leftShields}</li>
					<li style="color:GREEN">Rear Shields: ${ship.rearShields}</li>
				</ul>
				<p style="color:GREEN">Point cost for ship: ${ship.pointCost}</p>
			</div>
			<div class="col-3">
				<form:form action="update.do" method="GET" modelAttribute="ship">
					<table>
						<tr>
							<td><form:label path="id" value="${ship.id}"></form:label>
							<td><form:hidden path="id" value="${ship.id}" />
							<td><form:errors path="id" value="${ship.id}"></form:errors>
						<tr>
						<tr>
							<td style="color:RED"><form:label path="shipClass" value="${ship.shipClass}">Ship Class: </form:label></td>
							<td><form:input path="shipClass" value="${ship.shipClass}" />
								<form:errors path="shipClass" value="${ship.shipClass}" /></td>
						</tr>
						<tr>
							<td style="color:RED"><form:label path="alignment" value="${ship.alignment}">Alignment: </form:label></td>
							<td><form:radiobutton path="alignment" value="Empire"/><p style="color:RED;">Empire</p>
								<form:radiobutton path="alignment" value="Rebellion"/><p style="color:RED;">Rebellion</p>
								<form:errors path="alignment" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="pointCost" value="${ship.pointCost}">Point Cost: </form:label></td>
							<td><form:input path="pointCost" value="${ship.pointCost}" />
								<form:errors path="pointCost" value="${ship.pointCost}" /></td>
						</tr>
						<tr>
							<td style="color:RED"><form:label path="hull" value="${ship.hull}">Hull Value: </form:label></td>
							<td><form:input path="hull" value="${ship.hull}" /> <form:errors
									path="hull" value="${ship.hull}" /></td>
						</tr>
						<tr>
							<td style="color:RED"><form:label path="forwardShields"
									value="${ship.forwardShields}">Forward Shields:</form:label></td>
							<td style="color:RED"><form:select path="forwardShields">Forward Shields
									<option value="${ship.forwardShields}">${ship.forwardShields}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</form:select></td>
							<form:errors path="forwardShields" value="forwardShields" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="rightShields"
									value="${ship.rightShields}">Right Shields:</form:label></td>
							<td style="color:RED"><form:select path="rightShields">Right Shields
									<option value="${ship.rightShields}">${ship.rightShields}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</form:select></td>
							<form:errors path="rightShields" value="rightShields" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="leftShields"
									value="${ship.leftShields}">Left Shields:</form:label></td>
							<td style="color:RED"><form:select path="leftShields">Left Shields
									<option value="${ship.leftShields}">${ship.leftShields}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</form:select></td>
							<form:errors path="leftShields" value="leftShields" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="rearShields"
									value="${ship.rearShields}">Rear Shields:</form:label></td>
							<td style="color:RED"><form:select path="rearShields">Rear Shields
									<option value="${ship.rearShields}">${ship.rearShields}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
								</form:select></td>
							<form:errors path="rearShields" value="rearShields" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="command" value="${ship.command}">Command Value:</form:label></td>
							<td style="color:RED"><form:select path="command" value="${ship.command}">Command Value
									<option value="${ship.command}">${ship.command}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="command" value="command" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="engineering"
									value="${ship.engineering}">Engineering Value:</form:label></td>
							<td style="color:RED"><form:select path="engineering"
									value="${ship.engineering}">Engineering Value
									<option value="${ship.engineering}">${ship.engineering}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="engineering" value="engineering" />
						</tr>
						<tr>
							<td style="color:RED"><form:label path="squadron" value="${ship.squadron}">Squadron Value:</form:label></td>
							<td style="color:RED"><form:select path="squadron" value="${ship.squadron}">Squadron Value
									<option value="${ship.squadron}">${ship.squadron}</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="squadron" value="squadron" />
						</tr>
						<tr>
							<td style="color:RED"><input type="submit" value="Update Ship" />Update:
								${ship.shipClass}?</td>
						</tr>
					</table>
					<br>
				</form:form>
			</div>
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