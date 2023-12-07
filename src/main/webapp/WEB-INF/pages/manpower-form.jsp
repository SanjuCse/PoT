<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
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
		<h1 class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add/Update ManPower Form</h1>
		<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">(${buildingName})</p>
		<frm:form modelAttribute="manpower" class="row g-3 mt-4">
			<div class="col-md-4 text-center">
				<img src="https://blog.taskque.com/wp-content/uploads/2019/05/bechmarks.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Project Manager)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.projectManager==null?0:manpower.projectManager}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="projectManager"
					class="form-control text-center" disabled="disabled"
					value="${manpower.projectManager==null?0:manpower.projectManager}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://www.letsbuild.com/wp-content/uploads/2023/07/27706-e1543571837725.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Construction Contractor)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.contractor==null?0:manpower.contractor}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="contractor"
					class="form-control text-center" disabled="disabled"
					value="${manpower.contractor==null?0:manpower.contractor}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://img.freepik.com/premium-photo/construction-digital-tablet-man-with-vision-thinking-planning-construction-site-construction-worker-future-online-app-creative-design-idea-engineering-architecture_590464-115722.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Construction Supervisor)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.supervisor==null?0:manpower.supervisor}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="supervisor"
					class="form-control text-center" disabled="disabled"
					value="${manpower.supervisor==null?0:manpower.supervisor}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://sika.scene7.com/is/image/sika/glo-man-concrete-repair:16-9?wid=1920&hei=1080&fit=crop%2C1"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Head-ConcreteMan)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.headConcreteMan==null?0:manpower.headConcreteMan}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="headConcreteMan"
					class="form-control text-center" disabled="disabled"
					value="${manpower.headConcreteMan==null?0:manpower.headConcreteMan}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://thumbs.dreamstime.com/b/urban-road-project-young-building-workers-construction-work-67662842.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Construction Male-Helper)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.maleHelper==null?0:manpower.maleHelper}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="maleHelper"
					class="form-control text-center" disabled="disabled"
					value="${manpower.maleHelper==null?0:manpower.maleHelper}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://www.shutterstock.com/image-photo/new-delhi-india-december-19-260nw-1874818795.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> 
				<label for="customRange" class="form-label">(Construction FeMale-Helper)</label>
				<input type="range" class="form-range" min="1" max="50" step="1"
					value="${manpower.femaleHelper==null?0:manpower.femaleHelper}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="femaleHelper"
					class="form-control text-center" disabled="disabled"
					value="${manpower.femaleHelper==null?0:manpower.femaleHelper}"></frm:input>
			</div>
			
			<div class="d-flex mt-5 justify-content-center">
				<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
					<button type="submit" class="btn btn-primary">Add/Update ManPower</button>
				</div>
				<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
					<button type="reset" class="btn btn-danger">Cancel</button>
				</div>

			</div>
		</frm:form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>