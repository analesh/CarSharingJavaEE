package WebApp;

import AppLayer.User;
import dataLayer.DB_register;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "signup1")
public class signup1 extends HttpServlet {
    User UserObj1=new User();
    DB_register DB_reg_obj = new DB_register();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("errorMessage1" ,"The Username already Exists!! Please Login");
        request.setAttribute("username" ,request.getParameter("username"));
        request.setAttribute("password" ,request.getParameter("pass"));
        request.setAttribute("phone" ,request.getParameter("phone"));
        request.setAttribute("email" ,request.getParameter("email"));
        if(UserObj1.IsValidCredentials1(request.getParameter("username"))) {
            request.getRequestDispatcher("/signup1.jsp").forward(request, response);
        }
        else{
            DB_reg_obj.register(request.getParameter("username"),request.getParameter("pass"),
                    request.getParameter("email"),request.getParameter("phone"));
        }request.getRequestDispatcher("/register.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
