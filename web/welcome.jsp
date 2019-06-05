<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 4/3/19
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%--<h1>Welcome ${username}</h1>--%>
<%--<p>Your Password is " ${password}"</p>--%>
<%--<a href="logout.jsp">Logout</a>--%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.


    if (session != null) {
        if (session.getAttribute("user") != null) {
            String name = (String) session.getAttribute("user");
            %>
<%@ include file="reg_navbar.html" %>

<%

        } else {
            response.sendRedirect("/index.jsp");
        }
    }
%>

</body>
</html>
