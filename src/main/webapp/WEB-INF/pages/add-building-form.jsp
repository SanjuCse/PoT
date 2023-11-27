<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Building Reg. Form</title>
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
					<div class="card text-black" style="border-radius: 25px">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="order-2 order-lg-1"> <!-- col-md-10 col-lg-6 col-xl-5 -->
									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">
										Add Building Details</p>
									<form:form cssClass="mx-1 mx-md-4" modelAttribute="building"
										method="post">
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Building
													Name</label>
												<form:input path="buildingName" type="text"
													id="form3Example1c" class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Building
													Owner Name</label>
												<form:input path="buildingOwnerName" type="text"
													id="form3Example1c" class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Architect
													Name</label>
												<form:input path="architect" type="text" id="form3Example4c"
													class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Area
													In Square Foot</label>
												<form:input path="areaInSqFoot" type="number"
													id="form3Example3c" class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3d">Floor
													Count</label>
												<form:input path="floorCount" type="number"
													id="form3Example3d" class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3e">Building
													Color</label>
												<form:input path="color" type="text" id="form3Example3e"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Location</label>
												<form:input path="location" type="text" id="form3Example4c"
													class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Building
													Height in Meter</label>
												<form:input path="height" type="number" id="form3Example4c"
													class="form-control" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center row">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
<!-- 											<div> -->
												<label class="form-label" for="form3Example4c">Building
													Cost in-$</label>
												<div class="input-group form-outline flex-fill mb-0">
													<span class="input-group-text">$</span>
													<form:input path="cost" type="number" id="form3Example4c"
														class="form-control" />
													<span class="input-group-text">.00</span>
												</div>
<!-- 											</div> -->

										</div>
										<div class="align-items-center">
											<div class="mb-3">
												<label for="exampleFormControlTextarea1" class="form-label">Some Remarks
													</label>
												<form:textarea class="form-control" path="remarks"
													id="exampleFormControlTextarea1" rows="3"></form:textarea>
											</div>
										</div>
										<div class="d-flex text-center justify-content-center mt-3">
											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-primary">Add
													Building Info</button>
											</div>
											<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="reset" class="btn btn-primary">
													Cancel</button>
											</div>

										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
