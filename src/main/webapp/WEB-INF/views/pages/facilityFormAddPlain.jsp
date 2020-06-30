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
    </form:form>
    <form:form method="post" modelAttribute="layer">
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

            <tr>
                <td>New layer</td>
                <td>pole do wybrania materiału<form:select path="material">
                    <form:options itemLabel="name" itemValue="id" items="${material}"/>
                </form:select>
                </td>
                <td>pole do podania grubości<form:input path="thickness" type="text"/><form:errors
                        path="thickness"/></td>
            </tr>
                <%--<c:forEach items="${layers}" var="layer" varStatus="loop">
                    <tr>
                        <td>${loop.index +1}</td>
                        <td><c:out value="${layer.name}"/></td>
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
                </c:forEach>--%>


                <%-- <c:forEach items="${layers}" var="layer" varStatus="loop"/>
                 <tr>
                     <td>Layer ${loop.index +1}</td>
                     <td><form:select path="layers" name="materials" id="materials">
                         <form:options items="${material}" itemLabel="name"/>
                     </form:select></td>
                     <td><form:input path="layerList" type="text"/><form:errors path="layerList"/></td>
                     <td><c:out value="${layer.thickness}"/></td>
                     <td><a href='/facilities/${facility.id}/layers/add'>
                         <button class="bullet-button">Add</button>
                     </a></td>
                     <td><a href='/facilities/${facility.id}/layers/delete/${layer.id}'>
                         <button class="bullet-button">Delete</button>
                     </a></td>
                         &lt;%&ndash;<td rowspan="${loop.index+1}"></td>&ndash;%&gt;
                 </tr>--%>

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
