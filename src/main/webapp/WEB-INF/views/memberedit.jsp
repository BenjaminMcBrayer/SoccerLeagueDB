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
	crossorigin="anonymous"><title>Edit User</title>
</head>
<body>
<h2> Update a Member</h2>	
<form action="memberedit">
		<input type="hidden" name="memberid" value="${member.memberid}">
		<table>
			<tr>
				<td>ID</td>
				<td>${member.memberid}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="${member.name}"></input></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><input type="text" name="role" value="${member.role}"></input></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" value="${member.address}"></input></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="text" name="phone" value="${member.phone}"></input></td>
			</tr>
			<tr>
				<td>Team ID</td>
				<td><input type="number" name="teamid" value="${member.team.teamid}"></input></td>
			</tr>
		</table>
		<input id="submitBtn" type="submit" value="Update"></input>
	</form>
</body>
</html>