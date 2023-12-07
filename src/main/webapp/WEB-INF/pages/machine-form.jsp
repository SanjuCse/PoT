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
		<h1 class="text-center">Add/Update Machines Form</h1>
		<frm:form modelAttribute="machines" class="row g-3 mt-4">
			<div class="col-md-4 text-center">
				<img
					src="https://d91ztqmtx7u1k.cloudfront.net/ClientContent/Images/Catalogue/20221014062820-1192bbc4-5026-4031-bf61-a1f9dc72d88b.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> <label for="customRange"
					class="form-label">(Concrete Mixer)</label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${machines.concreteMixer==null?0:machines.concreteMixer}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="concreteMixer"
					class="form-control text-center" disabled="disabled"
					value="${machines.concreteMixer==null?0:machines.concreteMixer}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://3.imimg.com/data3/KW/IW/MY-4850289/caterpillar-dozer.jpg"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> <label for="customRange"
					class="form-label">(Bull Dozer)</label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${machines.bullDozer==null?0:machines.bullDozer}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="bullDozer"
					class="form-control text-center" disabled="disabled"
					value="${machines.bullDozer==null?0:machines.bullDozer}"></frm:input>
			</div>
			<div class="col-md-4 text-center">
				<img
					src="https://images.jdmagicbox.com/quickquotes/images_main/hydroliftcarry-deck-crane-2178145630-5vxo1exw.png"
					class="rounded thumbnail" height="200px" width="200px"
					alt="Aluminium Channel"> <label for="customRange"
					class="form-label">(Hydrolift Crane)</label> <input type="range"
					class="form-range" min="1" max="50" step="1"
					value="${machines.hydroliftCrane==null?0:machines.hydroliftCrane}"
					oninput="this.nextElementSibling.value = this.value">
				<frm:input type="text" path="hydroliftCrane"
					class="form-control text-center" disabled="disabled"
					value="${machines.hydroliftCrane==null?0:machines.hydroliftCrane}"></frm:input>
			</div>
			<div class="d-flex mt-5 justify-content-center">
				<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
					<button type="submit" class="btn btn-primary">Add/Update
						Machines</button>
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