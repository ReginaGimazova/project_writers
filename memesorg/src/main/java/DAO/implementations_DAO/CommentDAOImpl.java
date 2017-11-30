package DAO.implementations_DAO;

import DAO.interfaces_DAO.CommentDAO;
import Hibernate.HibernateConnector;
import models.Advice_model;
import models.Comment_model;
import org.hibernate.Session;

import java.util.List;

public class CommentDAOImpl implements CommentDAO {
    Session session = null;
    public void add(Comment_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.saveOrUpdate(model);
    }

    public void save(Comment_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(model);
        session.getTransaction().commit();
        session.close();
    }

    public void update(Comment_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.update(model);
    }

    public void delete(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Comment_model comment_model = session.find(Comment_model.class, id);
        session.delete(comment_model);
        session.getTransaction().commit();
    }

    public Comment_model find(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Comment_model result = session.find(Comment_model.class, id);
        session.getTransaction().commit();
        return result;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Session getSession() {
        return session;
    }

    public Comment_model findByName(String name) {
        return null;
    }

    public List<Comment_model> findAll() {
        return null;
    }
}
