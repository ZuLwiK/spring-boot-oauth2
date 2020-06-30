<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
	<link rel="stylesheet" href="<c:url value='/webjars/bootstrap/4.1.1/css/bootstrap.min.css'/>" />
<title>Lambda</title>
</head>
<body>
	<div class="container">
		<sec:authentication property="principal.user" var="currentUser" scope="session" />
		<h1>Hello ${currentUser.displayName} | <a href="<c:url value='/logout'/>">Logout</a></h1>
		<%--<H2>Your ID is ${currentUser.displayId}</H2>--%>
		<%--<h2>ID ${currentUser.getUserId}</h2>--%>
		<sec:authorize access="isAuthenticated()">
			authenticated as <sec:authentication property="principal.username" />
		</sec:authorize>
	</div>
	<div>
	Tekst z opisem dotyczącym działania aplikacji, norm na których opierają się obliczenia itp.
	</div>
	<div>
		<div>

			<table width="100%" border="1">
				<tr>
					<td colspan="4"></td>
				</tr>
				<tr>
					<td colspan="4">Go to:</td>
				</tr>
				<tr>
					<td colspan="4"><a href="/materials/all"> Material List </a></td>
				</tr>
				<tr>
					<td colspan="4"><a href="/facilities/all"> Facilities </a></td>
				</tr>
				<tr>
					<td colspan="4"><a href="/calculations"> Calculations </a></td>
				</tr>
				<tr>
					<td colspan="4"><a href="/about"> About author </a></td>
				</tr>
				<%--<div><spring:message code="app.footer"/></div>--%>
			</table>
		</div>
	</div>
</body>
</html>
