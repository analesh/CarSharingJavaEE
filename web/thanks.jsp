<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 30/3/19
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<<%@page import="dataLayer.DB_User"%>
<<%@page import="WebApp.login"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Congratulation</title>
</head>
<body>
<%
    if (session != null) {
        if (session.getAttribute("user") != null) {
            String name = (String) session.getAttribute("user");
%>
<%@ include file="reg_navbar.html" %>

<%

} else {

%>
<%@include file="navbar.html" %>
<%
        }
    }
%>
<div class="container">
    <div>
        <h1>Congratulations</h1>
        <p>You have successfully registered</p>
    </div>
</div>

</body>
</html>
