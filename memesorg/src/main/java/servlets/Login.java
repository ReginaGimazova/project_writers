package servlets;

import DAO.implementations_DAO.UserDAOImpl;
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

@WebServlet(name = "auth", urlPatterns = {"/auth"})

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
        User_model user = userDAO.findByName(login);

        if (user != null && user.getPassword().equals(password)){
            HttpSession session = req.getSession();
            Long userId = user.getId();
            session.setAttribute("user_id", userId);
            resp.sendRedirect(req.getContextPath() + "/profile");
            //req.getRequestDispatcher("add_product.html").forward(req, resp);
        }
        else {
            resp.sendRedirect(req.getContextPath() + "/auth");
            // req.getRequestDispatcher("auth.html").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("auth.html").forward(req, resp);
    }
}