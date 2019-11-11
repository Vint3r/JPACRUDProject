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
	<div class="container">
		<div class="row">
			<div class="col-3">
				<a href="goHome.do" role="button" aria-disabled="true"
					class="btn btn-outline-primary">Return Home</a><br> <br>
				<br>
			</div>
			<div class="col-6">
				<form:form action="create.do" method="GET" modelAttribute="ship">
					<table>
						<tr>
							<td><form:label path="id" value="${ship.id}"></form:label>
							<td><form:hidden path="id" value="${ship.id}" />
							<td><form:errors path="id" value="${ship.id}"></form:errors>
						<tr>
						<tr>
							<td style="color: RED"><form:label path="shipClass"
									value="class">Ship Class: </form:label></td>
							<td><form:input path="shipClass" value="class" />
								<form:errors path="shipClass" value="class" /></td>
						</tr>
						<tr>
							<td style="color: RED"><form:label path="alignment"
									value="Rebellion">Alignment: </form:label></td>
							<td><form:radiobutton path="alignment" value="Empire" /><p style="color:RED;">Empire</p>
								<form:radiobutton path="alignment" value="Rebellion" /><p style="color:RED;">Rebellion</p>
								<form:errors path="alignment" />
						</tr>
						<tr>
							<td style="color: RED"><form:label path="pointCost"
									value="0">Point Cost: </form:label></td>
							<td><form:input path="pointCost" value="0" />
								<form:errors path="pointCost" value="0" /></td>
						</tr>
						<tr>
							<td style="color: RED"><form:label path="hull"
									value="0">Hull Value: </form:label></td>
							<td><form:input path="hull" value="0" /> <form:errors
									path="hull" value="0" /></td>
						</tr>
						<tr>
							<td style="color: RED"><form:label path="forwardShields"
									value="1">Forward Shields:</form:label></td>
							<td style="color: RED"><form:select path="forwardShields">Forward Shields
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
							<td style="color: RED"><form:label path="rightShields"
									value="1">Right Shields:</form:label></td>
							<td style="color: RED"><form:select path="rightShields">Right Shields
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
							<td style="color: RED"><form:label path="leftShields"
									value="1">Left Shields:</form:label></td>
							<td style="color: RED"><form:select path="leftShields">Left Shields
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
							<td style="color: RED"><form:label path="rearShields"
									value="1">Rear Shields:</form:label></td>
							<td style="color: RED"><form:select path="rearShields">Rear Shields
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
							<td style="color: RED"><form:label path="command"
									value="1">Command Value:</form:label></td>
							<td style="color: RED"><form:select path="command"
									value="1">Command Value
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="command" value="command" />
						</tr>
						<tr>
							<td style="color: RED"><form:label path="engineering"
									value="1">Engineering Value:</form:label></td>
							<td style="color: RED"><form:select path="engineering"
									value="1">Engineering Value
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="engineering" value="engineering" />
						</tr>
						<tr>
							<td style="color: RED"><form:label path="squadron"
									value="1">Squadron Value:</form:label></td>
							<td style="color: RED"><form:select path="squadron"
									value="1">Squadron Value
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</form:select></td>
							<form:errors path="squadron" value="squadron" />
						</tr>
						<tr>
							<td style="color: RED"><input type="submit"
								value="Add ship" />Create</td>
						</tr>
					</table>
					<br>
				</form:form>
			</div>
			<div class="col-3"></div>
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