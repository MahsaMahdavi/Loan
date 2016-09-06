<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="data.GrantCondition" %><%--
  Created by IntelliJ IDEA.
  User: mahsa
  Date: 04/09/2016
  Time: 09:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>شرایط اعطا</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <style>
        body {
            direction: rtl;
        }

        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid #2f93ff;
            border-radius: 4px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #5573af;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #1533a0;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        table, td, th {
            border: 1px solid black;
        }
    </style>
    <script type="text/javascript">
        function validate() {
            var valid = true;
            if (document.getElementById("name").value == "") {
                valid = false;
            }
            if (document.getElementById("minimumCotractDuration").value == "") {
                valid = false;
            }
            if (document.getElementById("maximumContractDuration").value == "") {
                valid = false;
            }
            if (document.getElementById("minimumContractCost").value == "") {
                valid = false;
            }
            if (document.getElementById("maximumContractCost").value == "") {
                valid = false;
            }
            if (valid) {
                document.forms[0].submit();
            }
            else {
                window.alert("fill in the blank");
            }
        }

        function updateTable() {
            var table = document.getElementById("conditionTable");
            var row = table.insertRow();
            var cell0 = row.insertCell(0);
            var cell1 = row.insertCell(1);
            var cell2 = row.insertCell(2);
            var cell3 = row.insertCell(3);
            var cell4 = row.insertCell(4);
            cell0.innerHTML = document.getElementById("name").value;
            cell1.innerHTML = document.getElementById("minimumCotractDuration").value;
            cell2.innerHTML = document.getElementById("maximumContractDuration").value;
            cell3.innerHTML = document.getElementById("minimumContractCost").value;
            cell4.innerHTML = document.getElementById("maximumContractCost").value;
        }
        function redirect() {

            var table = document.getElementById("conditionTable");
            var conditions = new Array();
            for (var i = 1; i < table.rows.length; i++) {
                var name = (table.rows[i].cells[0].innerHTML);
                var minimumCotractDuration = (table.rows[i].cells[1].innerHTML);
                var maximumContractDuration = (table.rows[i].cells[2].innerHTML);
                var minimumContractCost = (table.rows[i].cells[3].innerHTML);
                var maximumContractCost = (table.rows[i].cells[4].innerHTML);
                var result = name + "!" + minimumCotractDuration + "!" + maximumContractDuration + "!" + minimumContractCost + "!" + maximumContractCost;
                conditions.push(result);
                <%
               String loanTypeName = (String )request.getAttribute("loanTypeName");
               String interestRate = (String )request.getAttribute("interestRate");
                %>
                window.location = "loanType_management.jsp?loanTypeName=<%=loanTypeName%>&interestRate=<%=interestRate%>&conditions=" + conditions;
            }
        }
    </script>
</head>
<body>
<div>
    <form method=post>
        <label for="name">نام:</label>
        <input type=text id="name" name="name">
        <label for="minimumCotractDuration">حداقل مدت قرارداد:</label>
        <input type="text" id="minimumCotractDuration" name="minimumCotractDuration">
        <label for="maximumContractDuration">حداکثر مدت قرارداد:</label>
        <input type="text" id="maximumContractDuration" name="maximumContractDuration">
        <label for="minimumContractCost">حداقل مبلغ قرارداد:</label>
        <input type="text" id="minimumContractCost" name="minimumContractCost">
        <label for="maximumContractCost">حداکثر مبلغ قرارداد:</label>
        <input type="text" id="maximumContractCost" name="maximumContractCost">
    </form>

    <button onclick="redirect()"> ثبت</button>
    <button onclick="updateTable()"> اضافه کن</button>
    <br>

    <table id="conditionTable">
        <tr>
            <th>نام</th>
            <th>حداقل مدت قراداد</th>
            <th>حداکثر مدت قراداد</th>
            <th>حداقل مبلغ قراداد</th>
            <th>حداکثر مبلغ قراداد</th>
        </tr>
    </table>
    <br>

</div>
</body>
</html>
