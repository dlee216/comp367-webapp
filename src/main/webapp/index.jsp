<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>COMP367 Web App</title>
</head>
<body>
<%
    int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
    String greeting;
    if (hour < 12) {
        greeting = "Good morning, Do Young Lee, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Do Young Lee, Welcome to COMP367";
    }
%>
<h1><%= greeting %></h1>
</body>
</html>
