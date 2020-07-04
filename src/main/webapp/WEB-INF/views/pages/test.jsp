<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 02.07.2020
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <style>
        .container {
            width: 500px;
            margin: 100px auto;
        }

        input {
            width: 300px;
            font-size: 10px;
            margin: 10px;
            padding: 10px;
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
<div class="container">
    <table>
        <tbody>
        <tr>
            <td><input type="text" name="name"></td>
            <td>
                <button class="remove">-</button>
            </td>
        </tr>
        <tr>
            <td><input type="text" name="name"></td>
            <td>
                <button class="remove">-</button>
            </td>
        </tr>
        </tbody>
    </table>
    <button id="addRow">+ Add</button>
    <button id="getValues">Get Values</button>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
    var html = '<tr><td><input type="text" name="name"></td><td><button class="remove">-</button></td></tr>';
    $(function () {
        $('tbody').sortable();

        $('#addRow').click(function () {
            $('tbody').append(html);
        });
        $(document).on('click','.remove',function() {
            $(this).parents('tr').remove();
        });
        $('#getValues').click(function(){
            var values=[];
            $('input[name="name"]').each(function(i,elem) {
                values.push($(elem).val());
            });
            alert(values.join(', '));
        });
    });
</script>
</body>
</html>
