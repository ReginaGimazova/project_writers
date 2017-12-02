package servlets;

import DAO.implementations_DAO.UserDAOImpl;
import HashPassword.MD5Hash;
import Hibernate.HibernateConnector;
import models.User_model;
import org.apache.commons.validator.routines.EmailValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "sign_up", urlPatterns = {"/sign_up"})

public class Registration extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        String login = req.getParameter("login");
        String username = req.getParameter("name");
        String password = null;
        String password_repeat = null;
        String email = null;

        User_model user = null;
        UserDAOImpl userDAO = new UserDAOImpl();

        try {
            password = MD5Hash.md5(req.getParameter("password"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        try {
            password_repeat = MD5Hash.md5(req.getParameter("password_confirm"));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        if (EmailValidator.getInstance().isValid(req.getParameter("email")) && (password.equals(password_repeat)) && (userDAO.findByName(username)) == null){
            email = req.getParameter("email");
            user = new User_model(username, email, login, password, password_repeat);
        }

        if (user != null){
            userDAO.save(user);
            resp.sendRedirect(req.getContextPath() + "/auth");
        }
        else {
            resp.sendRedirect(req.getContextPath() + "/sign_up");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("sign_up.html").forward(req, resp);
    }

    @Override
    public void init() throws ServletException {
        super.init();
        HibernateConnector.getSessionFactory();
    }

    @Override
    public void destroy() {
        super.destroy();
        HibernateConnector.getSessionFactory().close();
    }
}