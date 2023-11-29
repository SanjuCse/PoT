<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ page isELIgnored="false" %>
		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@page import="java.time.temporal.ChronoUnit" %>
				<%@page import="java.time.ZoneOffset" %>
					<%@page import="com.pot.utils.DateTimeUtil" %>
						<!DOCTYPE html>
						<html>

						<head>
							<meta charset="UTF-8">
							<title>Users Page</title>
							<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
								rel="stylesheet"
								integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
								crossorigin="anonymous" />
							<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
								integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
								crossorigin="anonymous"></script>
							<link rel="stylesheet"
								href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
							<style type="text/css">
								.form-check-input {
									clear: left;
								}

								.form-switch.form-switch-sm {
									margin-bottom: 0.5rem;
									/* JUST FOR STYLING PURPOSE */
								}

								.form-switch.form-switch-sm .form-check-input {
									height: 1rem;
									width: calc(1rem + 0.75rem);
									border-radius: 2rem;
								}

								.form-switch.form-switch-md {
									margin-bottom: 1rem;
									/* JUST FOR STYLING PURPOSE */
								}

								.form-switch.form-switch-md .form-check-input {
									height: 1.5rem;
									width: calc(2rem + 0.75rem);
									border-radius: 3rem;
								}

								.form-switch.form-switch-lg {
									margin-bottom: 1.5rem;
									/* JUST FOR STYLING PURPOSE */
								}

								.form-switch.form-switch-lg .form-check-input {
									height: 2rem;
									width: calc(3rem + 0.75rem);
									border-radius: 4rem;
								}

								.form-switch.form-switch-xl {
									margin-bottom: 2rem;
									/* JUST FOR STYLING PURPOSE */
								}

								.form-switch.form-switch-xl .form-check-input {
									height: 2.5rem;
									width: calc(4rem + 0.75rem);
									border-radius: 5rem;
								}
							</style>
						</head>

						<body>
							<jsp:include page="adminHeader.jsp" />
							<div class="px-4 py-5 my-5 text-center">
								<c:if test="${resultMsg != null}">
									<div class="alert alert-success alert-dismissible">
										<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
										${resultMsg}
									</div>
								</c:if>
								<h1 class="display-5 fw-bold">PoT - Users List</h1>
								<c:choose>
									<c:when test="${!empty users}">
										<table class="table table-lg table-striped">
											<tr>
												<th>User Name</th>
												<th>Email ID</th>
												<th>Department</th>
												<th>Address</th>
												<th>is Admin?</th>
												<th>Created Date &amp; Time</th>
												<th>Updated Date &amp; Time</th>
												<th>Edit User</th>
												<th>Delete</th>
											</tr>
											<c:forEach var="user" items="${users}">
												<tr class="mb-1">
													<td>${user.userName}</td>
													<td>${user.email}</td>
													<td>${user.dept}</td>
													<td>${user.address}</td>
													<td class="d-flex justify-content-center">
														<c:if test="${user.isAdmin}">
															<div class="form-check form-switch form-switch-lg">
																<input class="form-check-input" type="checkbox"
																	id="flexSwitchCheckChecked" checked
																	disabled="disabled">
																<label class="form-check-label"
																	for="flexSwitchCheckChecked"></label>
															</div>
														</c:if>
														<c:if test="${!user.isAdmin}">
															<div class="form-check form-switch form-switch-lg">
																<input class="form-check-input" type="checkbox"
																	id="flexSwitchCheckChecked" disabled="disabled">
																<label class="form-check-label"
																	for="flexSwitchCheckChecked"></label>
															</div>
														</c:if>
													</td>
													<%-- <td
														id="createdDate">${user.createdDate.toLocalDate()}&nbsp;&nbsp;${user.createdDate.toLocalTime().truncatedTo(ChronoUnit.SECONDS)}
														</td>
														<td id="updatedDate">
															${user.updatedDate.toLocalDate()}&nbsp;&nbsp;${user.updatedDate.toLocalTime().truncatedTo(ChronoUnit.SECONDS)}
														</td>
														<td id="createdDate">${user.createdDate.atZone(ZoneOffset.UTC)}
														</td>
														<td id="updatedDate">${user.updatedDate.atZone(ZoneOffset.UTC)}
														</td>
														--%>
														<td id="createdDate${user.uid}">
															${DateTimeUtil.getCurrentUtcDateTime(user.createdDate)}</td>
														<td id="updatedDate${user.uid}">
															${DateTimeUtil.getCurrentUtcDateTime(user.updatedDate)}</td>

														<td><a href="edit_user?uid=${user.uid}" type="button"
																class="btn btn-primary"><span
																	class="bi bi-pencil"></span>
																Edit</a></td>
														<td><a href="delete_user?uid=${user.uid}"
																onclick="confirm('Do u want to delete')" type="button"
																class="btn btn-danger"><span class="bi bi-trash"></span>
																Delete </a></td>
												</tr>
												<script>
													// function toLocalTimeFun(dateTime) {
													// 	return new Date(dateTime + "z");
													// }
													var createdDate = new Date(document.getElementById("createdDate${user.uid}").innerText + "z");
													var updatedDate = new Date(document.getElementById("updatedDate${user.uid}").innerText + "z");
													var showCreatedDate = createdDate.toDateString() + " - " + createdDate.toLocaleTimeString();
													var showUpdatedDate = updatedDate.toDateString() + " - " + updatedDate.toLocaleTimeString();
													document.getElementById("createdDate${user.uid}").innerHTML = showCreatedDate;
													document.getElementById("updatedDate${user.uid}").innerHTML = showUpdatedDate;
													/*createdDate.getDate() + "-" + createdDate.getMonth() + "-" + createdDate.getFullYear() + " " + createdDate.getHours() + ":" + createdDate.getMinutes() + ":" + createdDate.getSeconds() + " - "; */
												</script>
											</c:forEach>
										</table>
									</c:when>
									<c:otherwise>
										<h1 style="color: red; text-align: center">Records not found</h1>
									</c:otherwise>
								</c:choose>
								<!-- 		<blink> -->
								<%-- <h1 style="color: green; text-align: center">${resultMsg}</h1> --%>
									<!-- 		</blink> -->
									<br>
									<h1 style="text-align: center">
										<a href="add" type="button" class="btn btn-success"><span
												class="bi bi-person-add"></span> Add User</a>
									</h1>
							</div>
							<jsp:include page="footer.jsp" />
						</body>

						</html>