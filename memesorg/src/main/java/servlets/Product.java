package servlets;

import DAO.implementations_DAO.AdviceDAOImpl;
import DAO.implementations_DAO.CommentDAOImpl;
import DAO.implementations_DAO.UserDAOImpl;
import DAO.implementations_DAO.WorkDAOImpl;
import models.Advice_model;
import models.Comment_model;
import models.User_model;
import models.Work_model;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@WebServlet(name = "product", urlPatterns = {"/product"})
public class Product extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        Long user_id = (Long)req.getSession().getAttribute("user_id");
        Long work_id = (Long)req.getSession().getAttribute("work_id");

        String comment = new String(req.getParameter("comment-text").getBytes("ISO-8859-1"),"UTF-8");
        Date date = new Date();

        Comment_model comment_model = new Comment_model(comment, date);
        CommentDAOImpl commentDAO = new CommentDAOImpl();

        UserDAOImpl userDAO = new UserDAOImpl();
        WorkDAOImpl workDAO = new WorkDAOImpl();

        User_model user = userDAO.find(user_id);
        userDAO.getSession().close();

        Work_model work = workDAO.find(work_id);
        workDAO.getSession().close();

        comment_model.setUser(user);
        comment_model.setWork(work);

        Set<Comment_model> comments = new HashSet<Comment_model>();
        comments.add(comment_model);

        user.setComments(comments);
        work.setComments(comments);

        commentDAO.save(comment_model);

        resp.sendRedirect(req.getContextPath() + "profile.html");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");
        req.getRequestDispatcher("product.html").forward(req, resp);
    }
}
