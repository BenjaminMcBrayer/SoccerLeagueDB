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
<title>USERS</title>
</head>
<body>
	<div class="container">
		<h3>List of Current Members</h3>
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
				<c:forEach var="member" items="${members}">
					<tr>
						<td>${member.name}</td>
<%-- 						<td><a href="viewmember?memberid=${member.memberid}">View</a></td>
 --%>						<td><a href="editmember?memberid=${member.memberid}">Edit</a>
						<td><a href="deletemember?memberid=${member.memberid}"
							onclick="myFunction()">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<div class="container">
		<a href="addnewmember?memberid=${member.memberid}">Add a New Member</a>
	</div>
	</div>
	<script>
		function myFunction() {
			var txt;
			if (confirm("Do you really wish to delete this member?")) {
				txt = "Member has been deleted.";
			} else {
				txt = "";
			}
			document.getElementById("demo").innerHTML = txt;
		}
	</script>
</body>
</html>