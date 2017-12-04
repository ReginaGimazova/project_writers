package servlets;

import DAO.implementations_DAO.UserDAOImpl;
import models.User_model;
import models.Work_model;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "profile", urlPatterns = {"/profile"})
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long user_id = (Long) req.getSession().getAttribute("user_id");
        UserDAOImpl userDAO = new UserDAOImpl();
        User_model user = userDAO.find(user_id);
        req.setAttribute("user", user);

        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("/templates/profile.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User_model user = (User_model) req.getAttribute("user");
        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("/templates/profile.ftl").forward(req, resp);
    }
}
