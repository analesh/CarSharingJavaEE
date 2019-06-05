package WebApp;

import AppLayer.User;

import javax.servlet.http.HttpSession;
import java.io.IOException;


public class login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        User UserObj = new User();
        request.setAttribute("errorMessage" ,"The Username or Password is wrong");
        request.setAttribute("username" ,request.getParameter("username"));
        request.setAttribute("password" ,request.getParameter("password"));

        if(UserObj.IsValidCredentials(request.getParameter("username"),request.getParameter("password"))) {
            HttpSession session = request.getSession();
            session.setAttribute("user",request.getParameter("username"));
            session.setMaxInactiveInterval(3);
            response.sendRedirect("/welcome.jsp");
//            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
