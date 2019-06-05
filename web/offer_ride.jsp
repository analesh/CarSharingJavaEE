<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 30/3/19
  Time: 7:00 PM
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
        width: 100%    }
        .container{
            margin-top: 40px;
        }
    h1{
        text-align: center;
    }
    </style>
    <title>Offer Ride</title>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
    if (session != null) {
        if (session.getAttribute("user") != null) {
            String name = (String) session.getAttribute("user");
%>
<%@ include file="reg_navbar.html" %>


<h1>Offer Ride</h1>
<div class="container">
    <div class="row">
        <div class="col-4  mx-auto">
            <div class="myform form ">
                <form action="/offer_ride" method="post" name="offer_ride">
                    <div class="form-group">
                        <input type="text" name="car_name"  class="form-control my-input" id="car_name" placeholder="Car Name"required="required">

                    </div>
                    <div class="form-group">
                        <input type="text" name="start_trip"  class="form-control my-input" id="start_trip" placeholder="Place from where Ride Starts" required="required">
                    </div>
                    <div class="form-group">
                        <input type="text" name="end_trip" id="end_trip"  class="form-control my-input" placeholder="Place where Ride Ends" required="required">
                    </div>
                    <div class="form-group">
                        <input type="number" min="0" name="occupancy" id="occupancy"  class="form-control my-input" placeholder="Total no.seat Available" required="required">
                    </div>
                    <div class="form-group">
                        <input type="time" min="0" name="time" id="time"  class="form-control my-input" placeholder="Time when Ride Starts" required="required">
                    </div>
                    <div class="form-group">
                        <input type="date" min="0" name="date" id="date"  class="form-control my-input" placeholder="Date when Ride Starts" required="required">
                    </div>
                    <div class="form-group">
                        <input type="number" min="1" name="price_ride" id="price_ride"  class="form-control my-input" placeholder="Price per Person" required="required">
                    </div>
                    <div class="text-center form-group ">
                        <button type="submit" class="button">Offer Ride</button>
                    </div>

                </form>
            </div>
        </div>
    </div>

</div>
<%

} else {
    response.sendRedirect("/index.jsp");
        }
    }
%>
</body>
</html>
