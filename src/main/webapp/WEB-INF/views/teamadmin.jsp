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
<title>TEAMS</title>
</head>
<body>
<div class="container">
		<h3>List of Teams</h3>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>View</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="team" items="${teams}">
					<tr>
						<td>${team.teamname}</td>
						<td><a href="viewteam?teamid=${team.teamid}">View</a></td>
						<td><a href="editteam?teamid=${team.teamid}">Edit</a>
						<td><a href="deleteteam?teamid=${team.teamid}" onclick="myFunction()">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<div class="container">
		<a href="addnewteam?teamid=${team.teamid}">Add a New Team</a>
	</div>
	
<script>
function myFunction() {
    var txt;
    if (confirm("Do you really wish to delete this team?")) {
        txt = "Team has been deleted.";
    } else {
        txt = "";
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>
</body>
</html>