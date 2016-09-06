<%--
  Created by IntelliJ IDEA.
  User: mahsa
  Date: 04/09/2016
  Time: 04:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>نوع تسهیلات</title>
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
    </style>
    <script type="text/javascript">
        function validate() {
            var valid = true;
            if (document.getElementById("loanName").value == "") {
                window.alert("in");
                valid = false;
            }
            if (document.getElementById("interestRate").value == "") {
                window.alert("on");
                valid = false;
            }
            if (valid) {
                document.forms[0].submit();
            }
            else {
                window.alert("fill in the blank");
            }
        }
    </script>
</head>
<body>
<div>
    <form action="loanType" method="get">
        <label for="loanName">نام نوع تسهیلات:</label>
        <input type="text" id="loanName" name="loanTypeName">
        <label for="interestRate">نرخ سود:</label>
        <input type="text" id="interestRate" name="interestRate">
        <input type="button" value="ثبت" onclick="validate()">
    </form>
</div>
</body>
</html>
