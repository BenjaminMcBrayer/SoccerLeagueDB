<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<title>TEAM MEMBERS</title>
</head>
<body>
	<div class="container">
		<h3>Team Members</h3>
		<input type="hidden" name="teamid" value="${team.teamid}">
		<table class="table">
			<thead>
				<tr>
					<th>Team Name</th>
					<th>Current Members</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${team.teamname}</td>
					<td>${team.members}
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>