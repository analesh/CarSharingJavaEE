<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 13/3/19
  Time: 1:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


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
<h2> Contact No.</h2>
<h4>9828112663</h4>
<a href="/baap.jsp">fdfd</a>
</body>
</html>
