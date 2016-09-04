<%--
  Created by IntelliJ IDEA.
  User: mahsa
  Date: 04/09/2016
  Time: 04:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>صفحه خانه</title>
    <style>
        body{
            direction: rtl;
        }
    </style>
</head>
<body>
<form>
    <input type="radio" id="customers">مشتریان</input><br>
    <input type="radio" id="loanType">نوع تسهیلات</input><br>
    <input type="radio" id="loanFile">تشکیل پرونده تسهیلاتی</input><br><br>
    <input type="button" value="تایید" onclick="redirect()">
</form>
</body>
</html>
<script type="text/javascript">
    function redirect() {

        if (document.getElementById("customers").checked) {
            window.location = "customers.html";
        }
        if (document.getElementById("loanType").checked) {
            window.location = "loan_type.jsp";
        }

        if (document.getElementById("loanFile").checked) {
            window.location = "loan_file.jsp";
        }
    }
</script>