package WebApp;

import dataLayer.Db_offerRide;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "offer_ride")
public class offer_ride extends HttpServlet {
    Db_offerRide obj_Dbofferride = new Db_offerRide();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("car_name",request.getParameter("car_name"));
        request.setAttribute("start_trip",request.getParameter("start_trip"));
        request.setAttribute("occupancy",request.getParameter("occupancy"));
        request.setAttribute("end_trip",request.getParameter("end_trip"));
        request.setAttribute("time",request.getParameter("time"));
        request.setAttribute("date",request.getParameter("date"));
        request.setAttribute("price",request.getParameter("price_ride"));
        int occupancyint = Integer.parseInt(request.getParameter("occupancy"));
        int priceint = Integer.parseInt(request.getParameter("price_ride"));
         if(obj_Dbofferride.offer_ride(request.getParameter("car_name"),request.getParameter("start_trip"), occupancyint, request.getParameter("end_trip"),request.getParameter("time"),
                 request.getParameter("date"),priceint))
        {

             request.getRequestDispatcher("/thanks.jsp").forward(request, response);

         }
         else{
            request.getRequestDispatcher("/offer_ride.jsp").forward(request, response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
