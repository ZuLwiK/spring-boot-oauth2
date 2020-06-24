<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Add material</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
<div>

    <form:form method="POST" modelAttribute="material">
        <table border="1">
            <tr>
                <th colspan="11">Add material</th>
            </tr>
            <tr>
                <td>Name</td>
                <td><form:input path="name" type="text"/><form:errors path="name"/></td>
            <tr>
                <td>Max temp &#8451;</td>
                <td><form:input path="maxTemp" type="text"/><form:errors path="maxTemp"/></td>
            </tr>
            <tr>
                <td>Conductivity</td>
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
            <tr>
                <td colspan="1"></td>
                <td><form:input path="conductivity0200"/><form:errors
                        path="conductivity0200"/></td>
                <td><form:input path="conductivity0400"/><form:errors
                        path="conductivity0400"/></td>
                <td><form:input path="conductivity0600"/><form:errors
                        path="conductivity0600"/></td>
                <td><form:input path="conductivity0800"/><form:errors
                        path="conductivity0800"/></td>
                <td><form:input path="conductivity1000"/><form:errors
                        path="conductivity1000"/></td>
                <td><form:input path="conductivity1200"/><form:errors
                        path="conductivity1200"/></td>
                <td><form:input path="conductivity1400"/><form:errors
                        path="conductivity1400"/></td>
                <td><form:input path="conductivity1600"/><form:errors
                        path="conductivity1600"/></td>
                <td><form:input path="conductivity1800"/><form:errors
                        path="conductivity1800"/></td>
            </tr>

        </table>
        <br>
        <table border="0">
            <tr>
                <td><a href='/materials/all'>
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
                <td><a href="/about/"> About author </a></td>
            </tr>
        </table>
        <%--<tr><spring:message code="app.footer"/></tr>--%>
    </form:form>
</div>
</body>
</html>
