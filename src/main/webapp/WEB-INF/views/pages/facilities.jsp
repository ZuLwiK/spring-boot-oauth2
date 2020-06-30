<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Facilities Database</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

</head>
<body>
<div>
    <div class="col-md-7 col-md-6 col-sm-offset-3">
        <table class="table table-bordered">
            <tr>
                <th colspan="5">Facilities</th>
                <th colspan="2"><a href='/facilities/add'>
                    <button value="add facility">ADD</button>
                </a>
                </th>
            </tr>
            <tr>
                <td>No</td>
                <td>Name</td>
                <td>Inner temp [&#8451;]</td>
                <td>Outer temp [&#8451;]</td>
                <td>Wind speed [m/s]</td>
                <td colspan="2"></td>
            </tr>
            <c:forEach items="${facilities}" var="facility" varStatus="loop">
                <tr>
                    <td>${loop.index +1}</td>
                    <td><c:out value="${facility.name}"/></td>
                    <td><c:out value="${facility.innerTemperature}"/></td>
                    <td><c:out value="${facility.outerTemperature}"/></td>
                    <td><c:out value="${facility.windSpeed}"/></td>
                    <td><a href='/facilities/edit/${facility.id}'>
                        <button class="bullet-button">Edit</button>
                    </a></td>
                    <td><a href='/facilities/delete/${facility.user.id}'>
                        <form action="/facilities/delete/${facility.id}" method="post" th:object="${facility}">
                            <input type="SUBMIT" value="Delete"
                                   onclick="return confirm('Are you sure you want delete this facility?')"
                                   class="decrement-arrow-button"/></form>
                    </a></td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="7"></td>
            </tr>
            <tr>
                <td colspan="7">Go to:</td>
            </tr>
            <tr>
                <td colspan="7"><a href="/home"> HomePage </a></td>
            </tr>
            <tr>
                <td colspan="7"><a href="/materials/all"> Materials </a></td>
            </tr>
            <tr>
                <td colspan="7"><a href="/calculations"> Calculations </a></td>
            </tr>
            <tr>
                <td colspan="7"><a href="/about"> About author </a></td>
            </tr>
        </table>
        <%--  <tr><spring:message code="app.footer"/></tr>--%>
    </div>
</div>
</body>
</html>
