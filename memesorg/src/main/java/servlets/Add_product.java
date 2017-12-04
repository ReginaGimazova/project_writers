package servlets;

import DAO.implementations_DAO.UserDAOImpl;
import DAO.implementations_DAO.WorkDAOImpl;
import models.User_model;
import models.Work_model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "add_product", urlPatterns = {"/add_product"})
public class Add_product extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = (Long) req.getSession().getAttribute("user_id");

        String name = new String(req.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
        String genre = new String(req.getParameter("genre").getBytes("ISO-8859-1"), "UTF-8");
        String description = new String(req.getParameter("description").getBytes("ISO-8859-1"), "UTF-8");
        String text = new String(req.getParameter("text").getBytes("ISO-8859-1"), "UTF-8");
        Date date = new Date();

        Work_model work_model = new Work_model(name, description, text, date, genre);
        WorkDAOImpl workDAO = new WorkDAOImpl();
        UserDAOImpl userDAO = new UserDAOImpl();

        User_model user = userDAO.find(id);
        userDAO.getSession().close();

        work_model.setUser(user);
        Set<Work_model> works = new HashSet<Work_model>();
        works.add(work_model);
        user.setWorks(works);

        workDAO.save(work_model);

        req.setAttribute("product", work_model);
        RequestDispatcher requestDispatcher1 = getServletContext().getRequestDispatcher("/product"); //в сервлет product
        requestDispatcher1.forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("charset=UTF-8");
        req.getRequestDispatcher("/templates/add_product.ftl").forward(req, resp);
    }
}
