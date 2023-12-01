<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header
	class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
	<a href="/"
		class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
		<svg class="bi me-2" width="40" height="32" role="img"
			aria-label="Bootstrap">
				<use xlink:href="#bootstrap"></use></svg>
	</a>

	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
		<form method="post" action="/home">
			<li><input type="submit" class="nav-link px-2 link-secondary"
				value="Home"></li>
			<!-- <a href="/home" class="nav-link px-2 link-secondary">Home</a> -->
		</form>
		<!-- 		<li><a href="/home" class="nav-link px-2 link-dark">Home</a></li> -->
		<c:if test="${isAdmin}">
			<li><a href="/users" class="nav-link px-2 link-dark">Users</a></li>
		</c:if>
		<c:if test="${!isAdmin}">
			<li><a href="/buildings" class="nav-link px-2 link-dark">Building</a></li>
			<!-- 
				<li><a href="/add-material" class="nav-link px-2 link-dark">Material</a></li>
				<li><a href="/machines" class="nav-link px-2 link-dark">Machines</a></li>
				<li><a href="/instruments" class="nav-link px-2 link-dark">Instruments</a></li>
				<li><a href="/manpower" class="nav-link px-2 link-dark">Man
						Power</a></li> 
			-->
			<li><a href="/about" class="nav-link px-2 link-dark">About</a></li>
		</c:if>
	</ul>

	<div class="col-md-3 text-end">
		<a href="/logout"
			class="btn btn-outline-primary me-2 text-decoration-none">Logout</a>
	</div>
</header>