<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<h1 class="text-center">Material Form</h1>
		<form class="row g-3" method="post">
			<div class="col-md-3">

				<label for="customRange" class="form-label">Cement (In
					Trips)</label>

				<spring:bind path="material.cement">
					<input type="range" class="form-range" id="cementRange" min="1"
						max="50" step="0.5" value="0"
						oninput="this.nextElementSibling.value = this.value">
				</spring:bind>
				<input type="text" path="cement" class="form-control text-center"
					disabled="disabled" value="0"></input>
			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Construction
					Aggregate (In Trips)</label> <input type="range" class="form-range"
					id="concreteRange" min="1" max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.constructionAggregate">
					<input type="text" path="constructionAggregate"
						class="form-control text-center" disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Aluminium Rod
					(In Trips)</label> <input type="range" class="form-range"
					id="concreteRange" min="1" max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.rod">
					<input type="text" path="rod" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Sand (In Trips)</label>
				<input type="range" class="form-range" id="concreteRange" min="1"
					max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.sand">
					<input type="text" path="sand" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="mt-5"></div>
			<div class="col-md-6">
				<label for="customRange" class="form-label">Brick - Cement
					(In Trips)</label> <input type="range" class="form-range" min="1" max="50"
					step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="brick.cement">
					<input type="text" path="brick" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-md-6">
				<label for="customRange" class="form-label">Brick - Sand (In
					Trips)</label> <input type="range" class="form-range" min="1" max="50"
					step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="brick.sand">
					<input type="text" path="brick" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="mt-5"></div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Pipe (In Trips)</label>
				<input type="range" class="form-range" id="cementRange" min="1"
					max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.pipe">
					<input type="text" path="pipe" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>

			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Glass (In Trips)</label>
				<input type="range" class="form-range" id="concreteRange" min="1"
					max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.glass">
					<input type="text" path="glass" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Marble (In
					Trips)</label> <input type="range" class="form-range" id="concreteRange"
					min="1" max="50" step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.marble">
					<input type="text" path="marble" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-md-3">
				<label for="customRange" class="form-label">Ply (In Trips)</label> <input
					type="range" class="form-range" id="concreteRange" min="1" max="50"
					step="0.5" value="0"
					oninput="this.nextElementSibling.value = this.value">
				<spring:bind path="material.ply">
					<input type="text" path="ply" class="form-control text-center"
						disabled="disabled" value="0"></input>
				</spring:bind>
			</div>
			<div class="col-12 text-center mt-5">
				<button type="submit" class="btn btn-primary">
					<span class="bi bi-building-add"></span> Add Material
				</button>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>