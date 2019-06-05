<%--
  Created by IntelliJ IDEA.
  User: analesh
  Date: 30/3/19
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="dataLayer.Dbdetails"%>
<%@ page import="java.sql.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        nav{
            height: 80px;
            color: #00AFF5;

        }
        .navbar-text{
            text-align: right;
        }
        .navbar-brand{
            font-family: 'Baloo Chettan', cursive;
            font-size: 40px;
        }
        .navbar-brand:hover{
            font-family: 'Baloo Chettan', cursive;
            font-size: 40px;
            color: #00AFF5;
        }
        body{
            z-index: 9;
            font-family: 'Work Sans', sans-serif;

        }
        a{
            color: #00AFF5;
        }
        .card{
            margin-bottom: 4px;
            box-sizing: border-box;
        }
    </style>
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
<%

         Connection conn = null;
         Statement stmt = null;
         ResultSet rs = null;



            try{
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306", "analesh_root", "password");
                    System.out.println("connected email");
                } catch (Exception e) {
                    System.out.println("Couldn't connect" + e);
                }

                stmt = conn.createStatement();
                String sql;
                sql="SELECT * FROM Demo.car_detail";
                rs = stmt.executeQuery(sql);
                %>
     <div class="container">
    <div class="row">
<%
                while(rs.next()){
                    //Retrieve by column name
                    int price  = rs.getInt("price");
                    int seat = rs.getInt("occupancy");
                    String first = rs.getString("start_trip");
                    String last = rs.getString("end_trip");
                    String car_name = rs.getString("car_name");
                    String time = rs.getString("time");

                    %>

    <div class="card  col-4" style="width: 18rem;">

        <div class="card-body">
            <h5 class="card-title"><%out.print(car_name);%></h5>
            <p class="card-text">The rides Starts at <%out.print(time);%></p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">From: <%out.print(first);%></li>
            <li class="list-group-item">To:<%out.print(last);%></li>
            <li class="list-group-item">Seat Avalability:<%out.print(seat);%></li>
            <li class="list-group-item"><%out.print(price);%>Rs/per person</li>
        </ul>
        <div class="card-body">
            <a href="#" class="btn btn-primary">Pool Ride</a>

        </div>
    </div>

<%

        }
                %>
    </div>
     </div>

<%
        stmt=null;
        conn=null;
    }catch(SQLException se){
        //Handle errors for JDBC
        se.printStackTrace();
    }catch(Exception e){
        //Handle errors for Class.forName
        e.printStackTrace();
    }finally{
        //finally block used to close resources
        if(stmt!=null)
            stmt=null;
        if(conn!=null)
            conn=null;
        if(rs!=null)
            rs=null;
    }//end try





%>
<%

        } else {
            response.sendRedirect("/index.jsp");
        }
    }
%>
</body>
</html>
