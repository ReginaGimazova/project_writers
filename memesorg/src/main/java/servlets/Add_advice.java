package servlets;

import DAO.implementations_DAO.AdviceDAOImpl;
import DAO.implementations_DAO.UserDAOImpl;
import models.Advice_model;
import models.User_model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "add_advice", urlPatterns = {"/add_advice"})
public class Add_advice extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = (Long) req.getSession().getAttribute("user_id");

        String advice = new String(req.getParameter("advice").getBytes("ISO-8859-1"),"UTF-8");

        HttpSession session = req.getSession();

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


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("/templates/advices.ftl").forward(req, resp);
    }
}
