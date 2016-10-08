<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	
	<sf:form class="form-horizontal"
		action="${pageContext.request.contextPath }/docreate" method="post"
		commandName="notice">
		<fieldset>

			<!-- Form Name -->
			<legend>Create Notice</legend>



			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Name</label>
				<div class="col-md-4">
					<sf:input id="name" name="name" path="name" type="text"
						placeholder="Enter your name" class="form-control input-md" />

				</div>
			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email</label>
				<div class="col-md-4">
					<sf:input id="email" path="email" name="email" type="text"
						placeholder="Enter your email" class="form-control input-md" />

				</div>
			</div>

			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="text">Notice</label>
				<div class="col-md-4">
					<sf:textarea path="text" class="form-control" id="text" name="text"></sf:textarea>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="submit"></label>
				<div class="col-md-4">
					<button id="submit" name="submit" class="btn btn-primary">Create
						Notice</button>
				</div>
			</div>
		</fieldset>
	</sf:form>
</body>
</html>