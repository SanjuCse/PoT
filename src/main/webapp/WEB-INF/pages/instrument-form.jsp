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
		<h1 class="text-center">Add/Update Instrument Form</h1>
		<frm:form modelAttribute="instruments" class="row g-3 mt-4">
			<div class="col-md-4 text-center">
				<img src="https://www.themetalstore.co.uk/up/images/19435/image.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> <label for="customRange"
					class="form-label">(Aluminium Channel)</label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.aluminiumChannel==null?0:instruments.aluminiumChannel}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="aluminiumChannel"
					class="form-control text-center" disabled="disabled"
					value="${instruments.aluminiumChannel==null?0:instruments.aluminiumChannel}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://m.media-amazon.com/images/I/51+2VD0qncL._AC_UF1000,1000_QL80_.jpg"
					class="roundedrounded thumbnail" height="200px" width="300px"
					alt="Brick Towel"> <label for="customRange"
					class="form-label">(Brick Towel) </label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.brickTowel==null?0:instruments.brickTowel}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="brickTowel"
					class="form-control text-center" disabled="disabled"
					value="${instruments.brickTowel==null?0:instruments.brickTowel}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://in.element14.com/productimages/large/en_GB/1696684-40.jpg"
					class="roundedrounded thumbnail" height="200px" width="250px"
					alt="Brick Towel"> <label for="customRange"
					class="form-label">(Measuring Tape) </label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.measuringTape==null?0:instruments.measuringTape}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="measuringTape"
					class="form-control text-center" disabled="disabled"
					value="${instruments.measuringTape==null?0:instruments.measuringTape}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://images.ehive.com/accounts/3023/objects/images/ce445ed6776e4cab85fbc74f5f1678e0_l.jpg"
					class="rounded
rounded thumbnail" height="200px" width="250px"
					alt="Brick Towel"> <label for="customRange"
					class="form-label">(Plumb Bob) </label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.plumbBob==null?0:instruments.plumbBob}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="plumbBob"
					class="form-control text-center" disabled="disabled"
					value="${instruments.plumbBob==null?0:instruments.plumbBob}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img src="https://m.media-amazon.com/images/I/61v3F8UsRJL.jpg"
					class="rounded
rounded thumbnail" height="200px" width="250px"
					alt="Brick Towel"> <label for="customRange"
					class="form-label">(Right Angle Scale) </label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.rightAngleScale==null?0:instruments.rightAngleScale}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="rightAngleScale"
					class="form-control text-center" disabled="disabled"
					value="${instruments.rightAngleScale==null?0:instruments.rightAngleScale}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://5.imimg.com/data5/SELLER/Default/2021/2/LS/RT/RV/3081532/wooden-randha-500x500.jpg"
					class="rounded
rounded thumbnail" height="200px" width="250px"
					alt="Brick Towel"> <label for="customRange"
					class="form-label">(Wooden Float) </label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${instruments.woodenFloat==null?0:instruments.woodenFloat}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="woodenFloat"
					class="form-control text-center" disabled="disabled"
					value="${instruments.woodenFloat==null?0:instruments.woodenFloat}"></frm:input>
			</div>
			<!-- 			<div class="text-center"> -->
			<!-- 				<button type="submit" class="btn btn-primary"><span class="bi bi-house-gear-fill"></span> Add/Update Instrument</button> -->
			<!-- 				<button type="reset" class="btn btn-danger"><span class="bi bi-x-lg"></span> Cancel</button> -->
			<!-- 			</div> -->
			<div class="d-flex mt-5 justify-content-center">
				<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
					<button type="submit" class="btn btn-primary">Add/Update Instrument</button>
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