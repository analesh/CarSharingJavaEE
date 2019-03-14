package WebApp;

import AppLayer.User;

import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "login")
public class login extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        User UserObj = new User();
        request.setAttribute("errorMessage" ,"The Username or Password is wrong");
        request.setAttribute("username" ,request.getParameter("username"));
        request.setAttribute("password" ,request.getParameter("password"));
        if(UserObj.IsValidCredentials(request.getParameter("username"),request.getParameter("password"))) {
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
