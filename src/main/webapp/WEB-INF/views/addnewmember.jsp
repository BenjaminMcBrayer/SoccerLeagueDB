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
	crossorigin="anonymous"></link>
<title>Add Member</title>
</head>
<body>
	<div class="container">
		<h2>Add a New Member</h2>
		<form action="addmember">
			Name<br><input type="text" name="name"></input><br>
			Role<br><input type="text" name="role"></input><br>
			Address<br><input type="text" name="address"></input><br>
			Phone<br><input type="text" name="phone"></input><br>
			Team ID<br><input type="number" name="teamid"></input><br>
			<input type="submit" value="Submit"></input><br>
		</form>
	</div>
</body>
</html>