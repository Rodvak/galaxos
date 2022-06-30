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

 	
 	<h5 class="mt-3 pb-3">Quantity</h5>
 	<div class="border-bottom border-secondary border-3 pb-3">
 	<select class="form-select bg-dark border-secondary text-secondary" aria-label="Default select example">
  <option selected>Number of rolls</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="1">4</option>
  <option value="2">5</option>
  <option value="3">6</option>
  <option value="1">7</option>
  <option value="2">8</option>
  <option value="3">9</option>
  <option value="1">10</option>
</select>
 	</div>
 	
      <h1 class="text-center mt-5">Price per roll: $500.00 </h1>
  
       <div class="d-flex justify-content-center mt-5">
 			<a class="btn btn-outline-secondary me-5" href="/buy">Buy</a> <a class="btn btn-outline-secondary ms-5" href="/gallery">Back</a>
 			
<%--  			<form action='/charge' method='POST' id='checkout-form'>
                <script src='https://checkout.stripe.com/checkout.js'
                    class='stripe-button'
                    th:attr='data-key=pk_test_51KtNTsBxRJfNPUdIW1rt5QvUjKDaIxNCDr2ei1kCYgMU6ftixa6pWFgUmZ3NUPWhPHzf1YJ9SXowMRmH23xT9XNS00i7BkxzaA'
                    data-amount=${amount}, data-currency=${currency
                    }
                data-name='Baeldung' data-description='Buy Packs!'
                    data-image='https://www.baeldung.com/wp-content/themes/baeldung/favicon/android-chrome-192x192.png'
                    data-locale='auto' data-zip-code='false'>

                </script>
            </form>  --%>
		</div>
    </div>
    </div>
  </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>