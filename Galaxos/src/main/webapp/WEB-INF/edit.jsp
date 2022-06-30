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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>GALAXOS</title>
</head>
<body class="bg-dark">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">GALAXOS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link " href="/gallery">Gallery</a>
      </li>
      <c:choose>
      <c:when test="${loggedUser == null}">
      <li class="nav-item ">
        <a class="nav-link" href="/register">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
      </li>
      </c:when>
      <c:otherwise>
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/profile">Profile</a>
      </li>
      </c:otherwise>
      </c:choose>
    </ul>
  </div>
</nav>
<div class="container text-secondary mt-5">
  <div class="row">
    <div class="col-7">
<img class="border border-secondary border-3" src="images/g6.jpg" height="800" width="" alt="...">
    </div>
    <div class="col-5">
      <h1 class="text-center">Modify Your Wallpaper ${loggedUser.userName}.</h1>
      <!-- Color picker -->
      <form:form action="/wallpaper/${wallpaper.id}" method="put" modelAttribute="wallpaper">
      	<form:input type="hidden" path="user" value="${user_id}"/>
      	
     <h5 class="mt-5 border-top border-secondary border-3 pb-3 pt-3">Select your colors</h5>
     
      <div class="row d-flex justify-content-between border-bottom border-secondary border-3 pb-3">
      
	<form:input path="colorOne" type="color" class="form-control form-control-color bg-dark border-dark" id="exampleColorInput" value="#8E82A1" title="Choose your color"/>
	<form:input path="colorTwo" type="color" class="form-control form-control-color bg-dark border-dark" id="exampleColorInput" value="#F1ABA7" title="Choose your color"/>
	<form:input path="colorThree" type="color" class="form-control form-control-color bg-dark border-dark" id="exampleColorInput" value="#AE738C" title="Choose your color"/>
      </div>
 <!-- Color picker -->
 	<div class="border-bottom border-secondary border-3 pb-3">
	<h5 class="mt-3 pb-3">Enter Number of Yards</h5>
 	 <div class="form-outline form-white mb-4">
 	 
      <form:input path="yards" type="text" class="form-control bg-dark text-white border-secondary"/>
      </div>
 	</div>
 	
 	<h5 class="mt-3 pb-3">Name your Art</h5>
 	 <div class="form-outline form-white mb-4">
 	 
      <form:input path="artName" type="text" class="form-control bg-dark text-white border-secondary"/>
      </div>
 	<div class="border-bottom border-secondary border-3 pb-3">
 	</div>
       <div class="d-flex justify-content-center mt-5">
       <input type="submit" value="Update" class="btn btn-outline-secondary" />
 		 <a class="btn btn-outline-secondary ms-5" href="/profile">Back</a>
		</div>
		</form:form>
    </div>
    </div>
  </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>