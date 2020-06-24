<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta charset="UTF-8">
    <%--<title><spring:message code="app.title"/></title>--%>
</head>
<body>
<div>
    Tekst z opisem dotyczącym działania aplikacji, norm na których opierają się obliczenia itp.
</div>
<div>
    <div >

        <table width="100%" border="1">
            <tr>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td colspan="4">Go to:</td>
            </tr>
            <tr>
                <td colspan="4"><a href="/articles/all"> Article List </a></td>
            </tr>
            <tr>
                <td colspan="4"><a href="/authors/all"> Author List </a></td>
            </tr>
            <tr>
                <td colspan="4"><a href="/categories/all"> Category List </a></td>
            </tr>
            <tr>
                <td colspan="4"><a href="/drafts/all"> Category List </a></td>
            </tr>
            <%--<div><spring:message code="app.footer"/></div>--%>
        </table>
    </div>
</div>

</body>
</html>
