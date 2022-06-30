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
      <h1 class="text-center">Nebula</h1>
      <!-- Form -->
      <div class="row mt-5">
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="Card number" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="Expiration Date" aria-label="Last name">
  </div>
</div>
      <div class="row mt-4">
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="Name On Card" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="Security Code" aria-label="Last name">
  </div>
</div>
      <div class="row mt-4">
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="Address" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" class="form-control bg-dark border-secondary" placeholder="ZIP Code" aria-label="Last name">
  </div>
</div>
 <!-- Form -->
      <h1 class="text-center mt-5">Price $0.00 </h1>
       <div class="d-flex justify-content-center mt-5">
 			<a class="btn btn-outline-secondary me-5" href="/buy">Buy</a> <a class="btn btn-outline-secondary ms-5" href="/gallery">Back</a>
		</div>
    </div>
    </div>
  </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>