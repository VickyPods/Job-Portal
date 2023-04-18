<%@page import="com.entity.Jobs"%>
<%@page import="com.dao.jobDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: grey">
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="conatiner p-2">
		<div class="col-md-8 offset-md-2">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg }</div>
							<c:remove var="succMsg" />
						</c:if>

						<%
							int id = Integer.parseInt(request.getParameter("id"));
							jobDAO dao = new jobDAO(DBConnect.getconn());
							Jobs j = dao.getJobById(id);
						%>
						<h5>Edit Jobs</h5>
					</div>
					<form action="update" method="post">
						<input type="hidden" value="<%=j.getId()%>" name="id">
						<div class="form-group">
							<label>Enter title</label><input type="text" name="title"
								required class="form-control" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFormCustomSelctPref">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
									<option value="odisha">odisha</option>
									<option value="jharkhand">jharkhand</option>
									<option value="gujarat">gujarat</option>
									<option value="bubanshwar">bubanshwar</option>
									<option value="delhi">delhi</option>
									<option value="banglore">banglore</option>
									<option value="chennai">odchennaiisha</option>
									<option value="hyderbad">hyderbad</option>
									<option value="maharashtra">maharashtra</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>category</label><select class="custom-select"
									name="category" id="inlineFormCustomSelctPref">
									<option value="<%=j.getCategory()%>"><%=j.getCategory()%></option>
									<option value="It">It</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
									<option value=""></option>
									<option value=""></option>
									<option value=""></option>
									<option value=""></option>
								</select>

							</div>
							<div class="form-group col-md-4">
								<label>Status</label><select class="form-control" name="status">
									<option class="Avtive" value="Active"><%=j.getStatus()%></option>
									<option class="Avtive" value="Active">Active</option>
									<option class="Unactive" value="Unactive">Unactive</option>
								</select>
							</div>

							<div class="form-group">
								<label>Enter Description</label>
								<textarea required rows="6" cols="300" name="desc"
									class="form-control"><%=j.getDescription()%></textarea>
							</div>

							<div>
								<button class="btn btn-success">Update Job</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>