<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 12/3/19
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<%--<%@include file="reg_navbar.html" %>--%>
<%--You have successfully registered <span>${username}</span>.--%>
<%--<a href="login.jsp">Please login to continue</a>--%>
<div class="container">
    <div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
            <br><br> <h2 style="color:#0062cc">Success</h2>

            <h3>Dear, ${username}</h3>
            <p style="font-size:20px;color:#0062cc;">Thank you for verifying your Mobile No.We have sent you an email "${email}" with your details
                Please go to your above email now and login.</p>
            <a href="/login.jsp" class="btn btn-success">     Log in      </a>
            <br><br>
        </div>

    </div>
</div>
</body>
</html>
