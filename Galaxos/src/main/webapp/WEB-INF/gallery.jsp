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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="/">GALAXOS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link " href="/purpose">About us</a>
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
<div class="container text-white mt-5 ">
  <div class="row ">
    <div class="col-1 ">
    </div>
    <div class="container col-10 mt-5">
    <h2>GALAXOS</h2>
    <div id="carouselExampleControls" class="carousel slide carousel-fade mt-5 border border-secondary border-3" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/galaxy1.jpg" height="600" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/g4.jpg" height="600" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/galaxy3.jpg" height="600" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container mt-5">
<div class="row">
<div class="col">
 <a href="/show"><img class="border border-secondary border-3" src="images/galaxy2.jpg" height="300" width="300" alt="..."></a>
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary mb-3" href="/galaxy2">View</a>
</div>
</div>
<div class="col">
<img class="border border-secondary border-3" src="images/g5.jpg" height="300" width="300" alt="...">
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary mb-3" href="/galaxy3">View</a>
</div>
</div>
<div class="col">
<img class="border border-secondary border-3" src="images/g6.jpg" height="300" width="300" alt="...">
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary mb-3" href="/show">View</a>
</div>
</div>
<div class="col">
<img class="border border-secondary border-3" src="images/g7.jpg" height="300" width="300" alt="...">
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary mb-3" href="/show">View</a>
</div>
</div>
<div class="col">
<img class="border border-secondary border-3" src="images/g8.jpg" height="300" width="300" alt="...">
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary mb-3" href="/show">View</a>
</div>
</div>
<div class="col">
<img class="border border-secondary border-3" src="images/g9.jpg" height="300" width="300" alt="...">
 <div class="d-flex justify-content-center mt-3">
 <a class="btn btn-outline-secondary" href="/show">View</a>
</div>
</div>
</div>
</div>
    </div>
    <div class="col-1 ">
   
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>