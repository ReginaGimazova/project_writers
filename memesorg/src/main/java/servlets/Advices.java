package servlets;

import DAO.implementations_DAO.AdviceDAOImpl;
import DAO.implementations_DAO.UserDAOImpl;
import DAO.interfaces_DAO.UserDAO;
import models.Advice_model;
import models.User_model;
import models.Work_model;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "add_advice", urlPatterns = {"/add_advice"})
public class Advices extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        Long id = (Long) req.getSession().getAttribute("user_id");

        String advice = new String(req.getParameter("advice").getBytes("ISO-8859-1"),"UTF-8");

        Advice_model advice_model = new Advice_model(advice);
        AdviceDAOImpl adviceDAO = new AdviceDAOImpl();
        UserDAOImpl userDAO = new UserDAOImpl();

        User_model user = userDAO.find(id);
        userDAO.getSession().close();

        advice_model.setUser(user);
        Set<Advice_model> advices = new HashSet<Advice_model>();
        advices.add(advice_model);
        user.setAdvices(advices);

        adviceDAO.save(advice_model);

        resp.sendRedirect(req.getContextPath() + "/product");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("charset=utf-8");
        req.getRequestDispatcher("advices.html").forward(req, resp);
    }
}
