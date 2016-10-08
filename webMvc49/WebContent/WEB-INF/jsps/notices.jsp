<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<c:forEach var="notice" items="${notices }">
			<table>
				<tr>
					<td>id:${notice.id }</td>
				</tr>
				<tr>
					<td>Name : ${notice.name}</td>
				</tr>
				<tr>
					<td>Email : ${notice.email }</td>
				</tr>
				<tr>
					<td>Text : ${notice.text }</td>
				</tr>

			</table>
			<br>
			<br>
		</c:forEach>
	</div>
</body>
</html>