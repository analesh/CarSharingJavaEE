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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style><%@include file="/WEB-INF/css/signup_.css"%>
     .button{
         background-color:  #00AFF5;
         border: none;
         color: white;
         padding: 20px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         border-radius: 48px;
     }
    </style>
    <title>SignUp</title>
</head>


<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<body>
<%@include file="navbar1.html" %>
<div class="container">
    <div class="row">
        <div class="col-8  mx-auto text-center">
            <div class="header-title">
                <h1 class="wv-heading--title">
                    New here!! Create Your Own Account
                </h1>
                <h2 class="wv-heading--subtitle">
                    Car Pool is a trusted community marketplace that connects drivers with empty seats to co-travellers looking for a ride.
                </h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-4  mx-auto">
            <div class="myform form ">
                <form action="/signup1" method="post" name="login">
                    <div class="form-group">
                        <input type="text" name="username"  class="form-control my-input" id="name" placeholder="Name"required="required">
                        <p style="color: red"> ${errorMessage1} </p>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email" required="required">
                    </div>
                    <div class="form-group">
                        <input type="number" min="0" name="phone" id="phone"  class="form-control my-input" placeholder="Phone" required="required">
                    </div>
                    <div class="form-group">
                        <input type="password" min="0" name="pass" id="password"  class="form-control my-input" placeholder="Password" required="required">
                    </div>
                    <div class="text-center ">
                        <button type="submit" class="button">Create Your Free Account</button>
                    </div>
                    <div class="text-center ">
                        <h6><a class="underlineHover" href="login.jsp">Already have account?</a></h6>
                    </div>


                    <p  style="color: #aaaaaa" class="small mt-3">By signing up, you are indicating that you have read and agree to the <a href="#" class="ps-hero__content__link">Terms of Use</a> and <a href="#">Privacy Policy</a>.
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</body>
</html>
