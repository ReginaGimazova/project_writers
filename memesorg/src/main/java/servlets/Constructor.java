package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Constructor", urlPatterns = {"/Constructor"})
public class Constructor extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String e = req.getParameter("href");
        /*if (e.equals("Home")){
            resp.sendRedirect(req.getContextPath() + "home.html");
        }
        else if (e.equals("Trends")){
            resp.sendRedirect(req.getContextPath() + "trends.html");
        }
        else if (e.equals("Constructor")) {
            resp.sendRedirect(req.getContextPath() + "constructor.html");
        }
        else if (e.equals("Login")){
            resp.sendRedirect(req.getContextPath() + "login.html");
        }*/
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");
        req.getRequestDispatcher("constructor.html").forward(req, resp);
    }
}
