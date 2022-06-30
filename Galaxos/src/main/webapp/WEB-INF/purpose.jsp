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
<div class="container text-white mt-5 ">
  <div class="row ">
    <div class="col-1 ">
      
    </div>
    <div class="col-10">
    <h2>GALAXOS</h2>
      <h5 class="mt-5"> GALAXOS,  where fine art meets street art, our wall wallpapers are an abstract graphic print. 
      The handpainted pattern brings the expression of movement and texture to a room. 
      Every wallpaper is unique and is made of a fine 100% paper ground. </h5>
    </div>
    <div class="col-1 ">
      
    </div>
  </div>
</div>
</body>
</html>