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
    <title>Material Database</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

</head>
<body>
<div>
    <div class="col-md-7 col-md-6 col-sm-offset-3">
        <table class="table table-bordered">
            <tr>
                <th colspan="11">Materials</th>
                <th><a href='/materials/add'>
                    <button value="add material">ADD</button>
                </a>
                </th>
            </tr>
            <tr>
                <td rowspan="2">No</td>
                <td rowspan="2">Name</td>
                <td rowspan="2">Max temp [&#8451;]</td>
                <td colspan="9">Conductivity</td>
            </tr>
            <tr>
                <td>@200</td>
                <td>@400</td>
                <td>@600</td>
                <td>@800</td>
                <td>@1000</td>
                <td>@1200</td>
                <td>@1400</td>
                <td>@1600</td>
                <td>@1800</td>
            </tr>
            <c:forEach items="${materials}" var="material" varStatus="loop">
                <tr>
                    <td>${loop.index +1}</td>
                    <td><c:out value="${material.name}"/></td>
                    <td><c:out value="${material.maxTemp}"/></td>
                    <td><c:out value="${material.conductivity0200}"/></td>
                    <td><c:out value="${material.conductivity0400}"/></td>
                    <td><c:out value="${material.conductivity0600}"/></td>
                    <td><c:out value="${material.conductivity0800}"/></td>
                    <td><c:out value="${material.conductivity1000}"/></td>
                    <td><c:out value="${material.conductivity1200}"/></td>
                    <td><c:out value="${material.conductivity1400}"/></td>
                    <td><c:out value="${material.conductivity1600}"/></td>
                    <td><c:out value="${material.conductivity1800}"/></td>
                    <td><a href='/materials/edit/${material.id}'>
                        <button class="bullet-button">Edit</button>
                    </a></td>
                    <td><a href='/materials/delete/${material.user.id}'>
                        <form action="/materials/delete/${material.id}" method="post" th:object="${material}">
                            <input type="SUBMIT" value="Delete"
                                   onclick="return confirm('Are you sure you want delete this material?')"
                                   class="decrement-arrow-button"/></form>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="14"></td>
            </tr>
            <tr>
                <td colspan="14">Go to:</td>
            </tr>
            <tr>
                <td colspan="14"><a href="/home"> HomePage </a></td>
            </tr>
            <tr>
                <td colspan="14"><a href="/facilities/all"> Facilities </a></td>
            </tr>
            <tr>
                <td colspan="14"><a href="/calculations"> Calculations </a></td>
            </tr>
            <tr>
                <td colspan="14"><a href="/about"> About author </a></td>
            </tr>
        </table>
        <%--  <tr><spring:message code="app.footer"/></tr>--%>
    </div>
</div>
</body>
</html>
