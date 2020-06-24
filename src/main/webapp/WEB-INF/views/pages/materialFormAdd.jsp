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
    <style>
        /*td.conductivity {
            column-width: 100px
        }

        input {
            width: 10%
        }*/
    </style>
</head>
<body>
<div>
    <div class="col-md-7 col-md-6 col-sm-offset-3">
        <form:form method="POST" modelAttribute="material">
            <table class="table table-bordered">
                <tr>
                    <th colspan="11" width="100%">Add material</th>
                </tr>
                <tr>
                    <td rowspan="2" width="20%">Name</td>
                    <td rowspan="2" width="17%">Max temp &#8451;</td>
                    <td colspan="9">Conductivity</td>
                </tr>
                <tr>
                    <td class="conductivity" width="7%">@200</td>
                    <td class="conductivity" width="7%">@400</td>
                    <td class="conductivity" width="7%">@600</td>
                    <td class="conductivity" width="7%">@800</td>
                    <td class="conductivity" width="7%">@1000</td>
                    <td class="conductivity" width="7%">@1200</td>
                    <td class="conductivity" width="7%">@1400</td>
                    <td class="conductivity" width="7%">@1600</td>
                    <td class="conductivity" width="7%">@1800</td>
                </tr>
                <td><form:input path="name" type="text"/><form:errors path="name"/></td>
                <td><form:input path="maxTemp" type="text"/><form:errors path="maxTemp"/></td>
                <td class="conductivity"><form:input path="conductivity0200" style='width:auto'/><form:errors
                        path="conductivity0200"/></td>
                <td class="conductivity"><form:input path="conductivity0400"/><form:errors
                        path="conductivity0400"/></td>
                <td class="conductivity"><form:input path="conductivity0600"/><form:errors
                        path="conductivity0600"/></td>
                <td class="conductivity"><form:input path="conductivity0800"/><form:errors
                        path="conductivity0800"/></td>
                <td class="conductivity"><form:input path="conductivity1000"/><form:errors
                        path="conductivity1000"/></td>
                <td class="conductivity"><form:input path="conductivity1200"/><form:errors
                        path="conductivity1200"/></td>
                <td class="conductivity"><form:input path="conductivity1400" style='width:auto'/><form:errors
                        path="conductivity1400"/></td>
                <td class="conductivity"><form:input path="conductivity1600" style='width:auto'/><form:errors
                        path="conductivity1600"/></td>
                <td class="conductivity"><form:input path="conductivity1800" style='width:auto'/><form:errors
                        path="conductivity1800"/></td>
                <tr>
                    <td colspan="9"></td>
                    <td colspan="1"><a href='/materials/all'>
                        <button type="button" id="cancelForm" class="btn btn-primary">Cancel</button>
                    </a></td>
                    <td colspan="1">
                        <button type="submit" id="submitForm" class="btn btn-primary">Submit</button>
                    </td>
                </tr>

                <tr>
                    <td colspan="11"></td>
                </tr>
                <tr>
                    <td colspan="11">Go to:</td>
                </tr>
                <tr>
                    <td colspan="11"><a href="/articles/all"> Article List </a></td>
                </tr>
                <tr>
                    <td colspan="11"><a href="/authors/all"> Author List </a></td>
                </tr>
                <tr>
                    <td colspan="11"><a href="/categories/all"> Category List </a></td>
                </tr>
                <tr>
                    <td colspan="11"><a href="/drafts/all"> Category List </a></td>
                </tr>
            </table>
            <%--<tr><spring:message code="app.footer"/></tr>--%>
        </form:form>
    </div>
</div>
</body>
</html>
