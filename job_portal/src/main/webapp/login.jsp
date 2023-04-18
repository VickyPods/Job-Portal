<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<%@include file="all_component/all_css.jsp"%>

</head>
<body style="background-color: grey">
	<%@include file="all_component/navbar.jsp"%>
	<div class="containner-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x"aria-hidden="true"></i>

							<h5>Login page</h5>
						</div>
						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-success">${succMsg}</h4>
							<c:remove var="succMsg" />
						</c:if> 

						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email</label><input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedy="emailhelp" name="email">
							</div>

							<div class="form-group">
								<label for = "exampleInputPassword1">Enter Password</label><input type="password"
									required="required" class="form-control" id="exampleInputPassword1"
									aria-describedy="emailhelp" name="password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
