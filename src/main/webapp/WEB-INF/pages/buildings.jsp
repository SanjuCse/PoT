<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buildings Page</title>
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
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="px-4 py-5 my-5 text-center container">
		<c:if test="${resultMsg != null}">
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				${resultMsg}
			</div>
		</c:if>
		<c:if test="${ buildings.size() == 0}">
			<h1 class="display-5 fw-bold mb-4">No Building Found for this
				User</h1>

		</c:if>

		<c:if test="${ buildings.size() > 0}">
			<h1 class="display-5 fw-bold mb-4">PoT - Buildings List</h1>
		</c:if>
		<c:choose>
			<c:when test="${!empty buildings}">
				<div class="row">
					<c:forEach var="building" items="${buildings}">
						<div class="col d-flex justify-content-center">
							<div class="card border-dark mb-3" style="max-width: 18rem;">
								<div class="card-header">
									<h2>${building.buildingName}</h2>
								</div>
								<div class="card-body text-dark">
									<h5 class="card-title">Owner -
										${building.buildingOwnerName}</h5>
									<div class="col">
										<p>${building.remarks}</p>
									</div>
								</div>
								<div class="card-footer">
									<button class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#buildingInfo${building.buildingId}">More
										Building Info</button>
								</div>
							</div>
						</div>
						<!-- The Modal -->
						<div class="modal fade" id="buildingInfo${building.buildingId}">
							<div class="modal-xl modal-dialog">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">${building.buildingName}</h4>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal"></button>
									</div>

									<!-- Modal body -->
									<form:form cssClass="mx-1 mx-md-4" modelAttribute="building"
										method="post">
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example1c">Building ID</label>
												<form:input path="buildingId" type="text"
													id="form3Example1c" class="form-control"
													value="${building.buildingId}" disabled="true" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example1c">Building Name</label>
												<form:input path="buildingName" type="text"
													id="form3Example1c" class="form-control"
													value="${building.buildingName}" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example1c">Building Owner Name</label>
												<form:input path="buildingOwnerName" type="text"
													id="form3Example1c" class="form-control"
													value="${building.buildingOwnerName}" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example4c">Architect Name</label>
												<form:input path="architect" type="text" id="form3Example4c"
													class="form-control" value="${building.architect}" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example3c">Area In Square Foot</label>
												<form:input path="areaInSqFoot" type="number"
													id="form3Example3c" class="form-control"
													value="${building.areaInSqFoot}" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example3d">Floor Count</label>
												<form:input path="floorCount" type="number"
													id="form3Example3d" class="form-control"
													value="${building.floorCount }" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example3e">Building Color</label>
												<form:input path="color" type="text" id="form3Example3e"
													value="${building.color }" class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example4c">Location</label>
												<form:input path="location" type="text" id="form3Example4c"
													class="form-control" value="${building.location }" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label d-flex text-start"
													for="form3Example4c">Building Height in Meter</label>
												<form:input path="height" type="number" id="form3Example4c"
													class="form-control" value="${building.height }" />
											</div>
										</div>
										<div class="d-flex flex-row align-items-center row">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<!-- 											<div> -->
											<label class="form-label d-flex text-start"
												for="form3Example4c">Building Cost in-$</label>
											<div class="input-group form-outline flex-fill mb-0">
												<span class="input-group-text">$</span>
												<form:input path="cost" type="number" id="form3Example4c"
													class="form-control" value="${building.cost }" />
												<span class="input-group-text">.00</span>
											</div>
											<!-- 											</div> -->

										</div>
										<div class="align-items-center">
											<div class="mb-3">
												<label for="exampleFormControlTextarea1"
													class="form-label d-flex text-start">Some Remarks </label>
												<!-- style="height:50px;" -->
												<form:input class="form-control" path="remarks"
													id="exampleFormControlTextarea1" rows="3"
													style="height:100px;" value="${building.remarks}"></form:input>
											</div>
										</div>
										<div class="d-flex text-center justify-content-center mt-3">
											<div class="justify-content-center mx-4 mb-3 mb-lg-4">
												<button type="submit" class="btn btn-primary">Update
													Building</button>
												<a href="/materials?buildingId=${building.buildingId}" class="btn btn-primary">Material</a>
												<a href="/machines?buildingId=${building.buildingId}" class="btn btn-primary">Machines</a> <a
													href="/instruments?buildingId=${building.buildingId}" class="btn btn-primary">Instruments</a>
												<a href="/manpower?buildingId=${building.buildingId}" class="btn btn-primary">Man Power</a>
											</div>
											<div class="ms-5 mb-3 mb-lg-4"> <!-- d-flex justify-content-center  -->
												<button type="reset" class="btn btn-danger">Cancel</button>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-danger"
												data-bs-dismiss="modal">Close</button>
										</div>
									</form:form>

									<!-- Modal footer -->

								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>
		<h1 style="text-align: center">
			<a href="building" type="button" class="btn btn-success"><span
				class="bi bi-person-add"></span> Add Building</a>
		</h1>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>