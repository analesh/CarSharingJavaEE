<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 12/3/19
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .bg-1 {
            background-color: #1abc9c;
            color: #ffffff;
        }
        .bg-2 {
            background-color: #474e5d;
            color: #ffffff;
        }
        .bg-3 {
            background-color: #ffffff;
            color: #555555;
        }
        .container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
        }
        .navbar {
            margin-bottom: 0;
            border-radius: 0;

        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }
        <%@include file="/WEB-INF/css/about_.css"%>
    </style>

</head>
<body>
<%@include file="navbar.html" %>

<div class="container-fluid bg-1 text-center">
    <div class="container">
        <div class="row">
            <div class="col">

                <img src="https://lh3.googleusercontent.com/jtvIog26SE0pXQRFfBbgaRIPQ4-EJnVeC2da-Lw-1eKW87K1Mt7Rs-oj-9GW1Nm5KCXHNN6B4eGQljtcRpJWIY1aHY3BHrRG1z2jiCddWSsnCbYbbP_i7rFmAyEANFzxeibCgtczCg=w659-h637-no" class="img-circle" alt="Bird" width="350" height="350">
                <h3>Analesh Jaiswal</h3>
                <h3>Developer</h3>

            </div>
            <div class="col">

                <img src="https://lh3.googleusercontent.com/jtvIog26SE0pXQRFfBbgaRIPQ4-EJnVeC2da-Lw-1eKW87K1Mt7Rs-oj-9GW1Nm5KCXHNN6B4eGQljtcRpJWIY1aHY3BHrRG1z2jiCddWSsnCbYbbP_i7rFmAyEANFzxeibCgtczCg=w659-h637-no" class="img-circle" alt="Bird" width="350" height="350">
                <h3>Analesh Jaiswal</h3>
                <h3>Developer</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">

                <img src="https://lh3.googleusercontent.com/jtvIog26SE0pXQRFfBbgaRIPQ4-EJnVeC2da-Lw-1eKW87K1Mt7Rs-oj-9GW1Nm5KCXHNN6B4eGQljtcRpJWIY1aHY3BHrRG1z2jiCddWSsnCbYbbP_i7rFmAyEANFzxeibCgtczCg=w659-h637-no" class="img-circle" alt="Bird" width="350" height="350">
                <h3>Analesh Jaiswal</h3>
                <h3>Developer</h3>
            </div>
            <div class="col">

                <img src="https://lh3.googleusercontent.com/jtvIog26SE0pXQRFfBbgaRIPQ4-EJnVeC2da-Lw-1eKW87K1Mt7Rs-oj-9GW1Nm5KCXHNN6B4eGQljtcRpJWIY1aHY3BHrRG1z2jiCddWSsnCbYbbP_i7rFmAyEANFzxeibCgtczCg=w659-h637-no" class="img-circle" alt="Bird" width="350" height="350">
                <h3>Analesh Jaiswal</h3>
                <h3>Developer</h3>
            </div>
        </div>
    </div>

</div>

<div class="container-fluid bg-2 text-center">
    <h3>What Are We?</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
</div>

<div class="container-fluid bg-3 text-center">
    <h3>Where To Find Us?</h3>
    <div class="social">

        <a class="social-icon" data-tooltip="email@gmail.com" href="mailto:analeshjswl@gmail.com">
            <i class="fa fa-envelope" aria-hidden="true"></i>
        </a>

        <a class="social-icon" data-tooltip="GitHub" href="https://github.com/analesh">
            <i class="fa fa-github" aria-hidden="true"></i>
        </a>

        <a class="social-icon" data-tooltip="LinkedIn" href="https://www.linkedin.com/in/analesh">
            <i class="fa fa-linkedin" aria-hidden="true"></i>
        </a>

        <a class="social-icon" data-tooltip="Twitter" href="https://twitter.com/Analeshjaiswal">
            <i class="fa fa-twitter" aria-hidden="true"></i>
        </a>

        <a class="social-icon" data-tooltip="Facebook" href="https://www.facebook.com/analesh">
            <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>

        <a class="social-icon" data-tooltip="YouTube" href="https://www.youtube.com/c/Colorlib">
            <i class="fa fa-youtube" aria-hidden="true"></i>
        </a>
        <a class="social-icon" data-tooltip="YouTube" href="https://www.instagram.com/_analesh_">
            <i class="fa fa-instagram" aria-hidden="true"></i>
        </a>

    </div>
</div>

</body>
</html>