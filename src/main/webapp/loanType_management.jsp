<%@ page import="data.GrantCondition" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="business.LoanTypeBusiness" %>
<%@ page import="data.LoanType" %>
<%@ page import="java.util.HashSet" %>
<%--
  Created by IntelliJ IDEA.
  User: mahsa
  Date: 06/09/2016
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String loanTypeName = request.getParameter("loanTypeName");
    String interestRate = request.getParameter("interestRate");
    String[] conditions = (request.getParameter("conditions")).split(",");
    HashSet<GrantCondition> grantConditions = new HashSet<>();
    for (int i = 0; i < conditions.length; i++) {
        String infos[] = conditions[i].split("!");
        String name = infos[0];
        String minimumCotractDuration = infos[1];
        String maximumContractDuration = infos[2];
        String minimumContractCost = infos[3];
        String maximumContractCost = infos[4];
        GrantCondition grantCondition = new GrantCondition(name, minimumCotractDuration, maximumContractDuration, minimumContractCost, maximumContractCost);
        grantConditions.add(grantCondition);
    }
    LoanTypeBusiness.save(new LoanType(loanTypeName, Integer.parseInt(interestRate), grantConditions));
%>
</body>
</html>
