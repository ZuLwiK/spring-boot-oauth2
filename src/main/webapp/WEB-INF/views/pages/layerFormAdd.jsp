<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Layer</title>
</head>
<body>
<table border="1">
    <tr>
        <td>No.</td>
        <td>Material</td>
        <td>Thickness</td>
    </tr>

    <tr>
        <td>pole do wybrania materiału
            <form:form method="post" modelAttribute="facility">
                <form:select path="layers">
                    <form:options itemLabel="name" itemValue="id" items="${material}"/>
                </form:select></form:form>
        </td>
        <form:form method="post" modelAttribute="layer">
            <td>
                pole do podania grubości<form:input path="thickness" type="text"/><form:errors
                    path="thickness"/></td>
            <td><a href='/facilities/${facilityId}/layers/add'>
                <button class="bullet-button">Add</button>
            </a></td>
        </form:form>
    </tr>
</table>
</body>
</html>
