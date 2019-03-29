<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 4/3/19
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
   <html>
     <head>
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
         <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <title>Login</title>
         <style><%@include file="/WEB-INF/css/style.css"%></style>
     </head>

     <body>
<!--
        <h1>Welcme To the Login Page</h1>

        <form action="/login" method="post">
            Name <input type="text" name="username" width="30"/>
            Password <input type="password" name="password" width="10"/>
            <input type="submit" value="login"/>
        </form>
        <p style="color: red"> ${errorMessage} </p> -->
<%@include file="navbar.html" %>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
        </div>

        <!-- Login Form -->
        <form action="/login " method="post">
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="login"/>
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="password"/>
            <input type="submit" class="fadeIn fourth" value="login"/>
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <p style="color: red"> ${errorMessage} </p>


            <a class="underlineHover" href="#">Forgot Password?</a>
        </div>

    </div>
</div>

     </body>
    </html>
