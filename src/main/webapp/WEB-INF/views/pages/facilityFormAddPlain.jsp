<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Add facility</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
<div>

    <form:form method="POST" modelAttribute="facility">
        <table border="1">
            <tr>
                <th colspan="2">Add facility</th>
            </tr>
            <tr>
                <td>Name</td>
                <td><form:input path="name" type="text"/><form:errors path="name"/></td>
            <tr>
                <td>Inner temperature: &#8451;</td>
                <td><form:input path="innerTemperature" type="text"/><form:errors path="innerTemperature"/></td>
            </tr>
            <tr>
                <td>Outer temperature: &#8451;</td>
                <td><form:input path="outerTemperature" type="text"/><form:errors path="outerTemperature"/></td>
            </tr>
            <tr>
                <td>Wind speed [m/s]:</td>
                <td><form:input path="windSpeed" type="text"/><form:errors path="windSpeed"/></td>
            </tr>
        </table>


    <table border="1">
        <tr>
            <td>No.</td>
            <td>Material</td>
            <td>Thickness</td>
        </tr>
        <tr>
            <td colspan="1">Layer 0</td>
            <td colspan="2">Inside</td>
        </tr>
        <%--<form:form method="post" modelAttribute="layers">--%>
        <c:forEach begin="0" end="4" varStatus="loop">
        <tr>
            <td>${loop.index}</td>
            <td>

                <%--<form:select path="material">
                    <form:options itemLabel="name" itemValue="id" items="${materials}"/>
                </form:select>--%>
            </td>
            <td>
                <%--<form:input modelAttribute="layer" path="layer.thickness" /><form:errors
                    path="thickness"/></td>--%>
        </tr>
        </c:forEach>
          </table>
    <br>
    <table border="0">
        <tr>
            <td><a href='/facilities/all'>
                <button type="button" id="cancelForm">Cancel</button>
            </a><a href='/facilities/all'>
                <button type="submit" id="submitForm">Save</button></a>
            </td>
        </tr>
        <tr>
            <td><br></td>
        </tr>
        <tr>
            <td>Go to:</td>
        </tr>
        <tr>
            <td><br></td>
        </tr>
        <tr>
            <td><a href="/"> Home </a></td>
        </tr>
        <tr>
            <td><a href="/materials/all"> Material List </a></td>
        </tr>
        <tr>
            <td><a href="/calculations"> Calculations </a></td>
        </tr>
        <tr>
            <td><a href="/about"> About author </a></td>
        </tr>
    </table>
    </form:form>
    <%--<tr><spring:message code="app.footer"/></tr>--%>

</div>
</body>
</html>
