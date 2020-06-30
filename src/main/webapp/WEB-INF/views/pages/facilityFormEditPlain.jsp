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
                <td><form:input path="name" type="text" value="${facility.name}"/><form:errors path="name"/></td>
            <tr>
                <td>Inner temperature: &#8451;</td>
                <td><form:input path="innerTemperature" type="text" value="${facility.innerTemperature}"/><form:errors path="innerTemperature"/></td>
            </tr>
            <tr>
                <td>Outer temperature: &#8451;</td>
                <td><form:input path="outerTemperature" type="text" value="${facility.outerTemperature}"/><form:errors path="outerTemperature"/></td>
            </tr>
            <tr>
                <td>Wind speed [m/s]:</td>
                <td><form:input path="windSpeed" type="text" value="${facility.windSpeed}"/><form:errors path="windSpeed"/></td>
            </tr>


        </table>
        <br>
        <table border="0">
            <tr>
                <td><a href='/facilities/all'>
                    <button type="button" id="cancelForm">Cancel</button>
                </a>
                    <button type="submit" id="submitForm">Save</button>
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
        <%--<tr><spring:message code="app.footer"/></tr>--%>
    </form:form>
</div>
</body>
</html>
