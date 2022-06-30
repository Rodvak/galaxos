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
    </ul>
  </div>
</nav>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center border border-secondary border-3">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Register</h2>
              <p class="text-white-50 mt-5">Please enter the following information.</p>
				
             	<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="form-outline form-white mb-4">
					<form:errors class="link-dark fw-bold" path="userName" />
					<form:input class="form-control form-control bg-dark border-secondary text-white" placeholder="Name" path="userName" />
				</div>
				<div class="form-outline form-white mb-4">				
					<form:errors class="link-dark fw-bold" path="email" />
					<form:input class="form-control form-control bg-dark border-secondary text-white" placeholder="Email" path="email" />
				</div>
				<div class="form-outline form-white mb-4">				
					<form:errors class="link-dark fw-bold" path="password" />
					<form:input type="password" class="form-control form-control bg-dark border-secondary text-white" placeholder="Password" path="password" />
				</div>
				<div class="form-outline form-white mb-4">				
					<form:errors class="link-dark fw-bold" path="confirm" />
					<form:input type="password" class="form-control form-control bg-dark border-secondary text-white" placeholder="Confirm Password" path="confirm" />
				</div>
				<input type="submit" value="Sign Up" class="btn btn-outline-secondary" />
				</form:form>
				</div>
            	<div>
              <p class="mb-0">Already have an account? <a href="/login" class="text-secondary fw-bold">Login</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>