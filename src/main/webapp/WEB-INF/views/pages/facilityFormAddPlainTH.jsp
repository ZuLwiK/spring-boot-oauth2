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
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <style>
        .container {
            width: 500px;
            margin: 5px auto;
        }

        input {
            width: 300px;
            font-size: 10px;
            margin: 5px;
            padding: 5px;
        }

        .remove {
            width: 30px;
            height: 30px;
            font-size: 20px;
            background-color: tomato;
            color: white;;
            border: none;
            border-radius: 15px;
        }

        #addRow, #getValues {
            width: 130px;
            height: 40px;
            font-size: 16px;
            background-color: lightseagreen;
            color: white;
            border: none;
            margin: 20pc;
        }

        button:hover {
            cursor: pointer;
        }

        tr:hover {
            cursor: move;
        }
    </style>
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
        <div class="container">
            <table>
                <tbody>
                <tr>
                    <td>
                        <form:select path="layers"><form:options itemLabel="name" itemValue="id"
                                                                 items="${material}"/></form:select>
                    </td>
                    <td>
                        <form:input type="text" modelAttribute="layer" path="layer.thickness"/><form:errors
                            path="layer.thickness"/></td>
                    <td>
                        <button class="remove">-</button>
                    </td>
                </tr>
                <script>
                    var html = ' <tr>\n' +
                        '                    <td>\n' +
                        '                        <form:select path="layers"><form:options itemLabel="name" itemValue="id" items="${material}"/></form:select>\n' +
                        '                    </td>\n' +
                        '                    <td>\n' +
                        '                        <form:input type="text" modelAttribute="layer" path="layer.thickness"/><form:errors path="layer.thickness"/></td>\n' +
                        '                    <td>\n' +
                        '                        <button class="remove">-</button>\n' +
                        '                    </td>\n' +
                        '                </tr>';
                    $(function () {
                        $('tbody').sortable();

                        $('#addRow').click(function () {
                            $('tbody').append(html);
                        });
                        $(document).on('click', '.remove', function () {
                            $(this).parents('tr').remove();
                        });
                        $('#getValues').click(function () {
                            var values = [];
                            $('input[name="thickness"]').each(function (i, elem) {
                                values.push($(elem).val());
                            });
                            alert(values.join(', '));
                        });
                    });
                </script>
                </tbody>
            </table>
            <button id="addRow">+ Add</button>
            <button id="getValues">Get Values</button>
        </div>
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

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</body>
</html>
