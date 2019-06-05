<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 30/3/19
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>

<%
    session.removeAttribute("user");
    session.invalidate();
    response.sendRedirect("/index.jsp");
%>