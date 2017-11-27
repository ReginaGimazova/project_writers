package servlets;

import DAO.UserDAOImpl;
import HashPassword.MD5Hash;
import models.User_model;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "Login", urlPatterns = {"/Login"})

public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = null;

        try {
            password = MD5Hash.md5(req.getParameter("password"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        UserDAOImpl userDAO = new UserDAOImpl();
        User_model user = userDAO.findByUsername(login);

        if (user != null && user.getPassword().equals(password)){
            HttpSession session = req.getSession();
            Long userId = user.getId();
            session.setAttribute("user_id", userId);
            resp.sendRedirect(req.getContextPath() + "profile.html");
        }
        else {
            resp.sendRedirect(req.getContextPath() + "auth.html");
        }
    }

   @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        req.getRequestDispatcher("auth.html").forward(req, resp);
    }
}
