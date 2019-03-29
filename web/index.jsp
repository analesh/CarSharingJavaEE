
<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 28/2/19
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pool Car</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>


    footer {

      background-color: #555;
      color: white;
      padding: 15px;
      margin-top: 20px;
      width: 100%;
      position: absolute;
      bottom: 0;

    }
.img-text p { font-size: 30px;
  font-weight: bolder ;

}
.img-one{

  height: 400px;
  background:url("https://cdn.blablacar.com/kairos/assets/build/images/home_main_large-cf9833201f6f037587b180f79e147430.jpg") 50% 0 ;
  background-size: cover;
  position: relative;

}
.img-text{
position: absolute ;
  top:200px;
  left: 300px;
  color: white;

}

    .button {
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

    .text-center{
      text-align: center;
    }

  </style>
</head>
<body>

<%@include file="navbar.html" %>
<div class="main-area-index">
  <div class="img-one ">
    <div class="img-text text-center">
      <h1> Meet The People You Love On Your Time</h1>
      <p> Share the Ride Cost</p>
      <a class="button" href="#">Find Rides</a>
    </div>
  </div>


</div>
<footer class="text-center">
  <p>All Right Reseved To Analesh &copy</p>
</footer>

</body>
</html>
