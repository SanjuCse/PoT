<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Material Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<c:if test="${resultMsg != null}">
						<div class="alert alert-success alert-dismissible">
							<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
							${resultMsg}
						</div>
					</c:if>
					<div class="card text-black" style="border-radius: 25px">
							<p class="text-center h1 fw-bold mx-1 mx-md-4 mt-4">PoT
								- View And Update Materials</p>
						<form:form cssClass="mx-1 mx-md-4" modelAttribute="materials">
							<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">(${buildingName})</p>
							<div class="row">
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-user fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example1c">Material
											ID</label>
										<form:input path="materialId" type="number"
											id="form3Example1c" class="form-control" readonly="true" />
									</div>
								</div>
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-user fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example1c">Construction
											Aggregate</label>
										<form:input path="constructionAggregate" type="number"
											id="form3Example1c" class="form-control" />
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example3c">Sand</label>
										<form:input path="sand" type="number" id="form3Example3c"
											class="form-control" />
									</div>
								</div>

								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example3d">Cement</label>
										<form:input path="cement" type="number" id="form3Example3d"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example3e">Cement
											Brick</label>
										<form:input path="cementBrick" type="number"
											id="form3Example3e" class="form-control" />
									</div>
								</div>

								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Sand
											Brick</label>
										<form:input path="sandBrick" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Marble
										</label>
										<form:input path="marble" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Glass</label>
										<form:input path="glass" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Ply</label>
										<form:input path="ply" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
								<div class="d-flex flex-row align-items-center col-6">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Aluminum
											Rod</label>
										<form:input path="rod" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row mt-3">
								<div class="d-flex flex-row align-items-center col-12">
									<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
									<div class="form-outline flex-fill mb-0">
										<label class="form-label" for="form3Example4c">Pipe</label>
										<form:input path="pipe" type="number" id="form3Example4c"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="d-flex mt-3 justify-content-center">
								<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
									<button type="submit" class="btn btn-primary">Update
										Material</button>
								</div>
								<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
									<button type="reset" class="btn btn-danger">Cancel</button>
								</div>

							</div>
						</form:form>
						<!-- 	</div>
							</div> -->
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
