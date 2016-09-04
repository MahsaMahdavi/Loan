<%--
  Created by IntelliJ IDEA.
  User: mahsa
  Date: 04/09/2016
  Time: 09:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>شرایط اعطا</title>
</head>
<body>
<div>
    <form action="grantCondition" method="post">
        <label for="name">نام:</label>
        <input type="text" id="name" name="name">
        <label for="minimumCotractDuration">حداقل مدت قرارداد:</label>
        <input type="text" id="minimumCotractDuration" name="minimumCotractDuration">
        <label for="maximumContractDuration">حداکثر مدت قرارداد:</label>
        <input type="text" id="maximumContractDuration" name="maximumContractDuration">
        <label for="minimumContractCost">حداقل مبلغ قرارداد:</label>
        <input type="text" id="minimumContractCost" name="minimumContractCost">
        <label for="maximumContractCost">حداکثر مبلغ قرارداد:</label>
        <input type="text" id="maximumContractCost" name="maximumContractCost">
        <input type="button" value="ثبت" onclick="validate()">
    </form>
</div>
</body>
</html>
