package DAO;

import Hibernate.HibernateConnector;
import models.User_model;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class UserDAOImpl {

    Session session = null;

    public void addUser(User_model user) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.saveOrUpdate(user);
    }

    public void save(User_model user) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();
    }

    public void update(User_model user) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.update(user);
    }

    public void delete(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        User_model user = session.find(User_model.class, id);
        session.delete(user);
        session.getTransaction().commit();
    }

    public User_model find(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        User_model result = session.find(User_model.class, id);
        session.getTransaction().commit();
        return result;
    }

    public User_model findByUsername(String login){
        session = HibernateConnector.getSessionFactory().openSession();
        Query query = session.createQuery("from User_model where login=:login");
        query.setParameter("login", login);
        return (User_model)query.uniqueResult();

    }

    public List<User_model> findAll() {
        List<User_model> list = session.createCriteria(User_model.class).list();
        return list;
    }
}
