<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>GALAXOS</title>
</head>
<body class="bg-dark text-white">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="/">GALAXOS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link "
					href="/gallery">Gallery</a></li>
				<li><a class="nav-link " href="/logout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="container text-white mt-5 ">
		<div class="row ">
			<div class="col-1 "></div>
			<div class="col-10 mt-5">
				<h2>Welcome ${loggedUser.userName}</h2>
				<img class="border border-secondary border-3 mt-5" src="images/g8.jpg" height="600" width="1100" alt="...">
				<div class="text-center">
				<a class="btn btn-outline-secondary mt-5" href="/create">Create your own</a>
				</div>
				<h5 class="mt-5">Your creations:</h5>

				<c:forEach items="${allWallpapers}" var="wallpaper">
					<table class="table table-dark table-hover">
						<c:if test="${wallpaper.user == loggedUser}">
							<thead>
								<tr>
									<th>Art Name</th>
									<th>Colors</th>
									<th>Yards</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${wallpaper.artName}</td>
									<td>${wallpaper.colorOne} | ${wallpaper.colorTwo} |
										${wallpaper.colorThree}</td>
									<td>${wallpaper.yards}</td>
									<td><a class="text-white" href="/wallpapers/${wallpaper.id}/edit">Edit</a> | <a class="text-white" href="/delete/${wallpaper.id}">Delete</a>
									|  <a class="text-white" href="/buy">Buy</a></td>
								</tr>
						</c:if>
						</tbody>
					</table>
				</c:forEach>
			</div>
		</div>
		<div class="col-1 "></div>
	</div>

</body>
</html>