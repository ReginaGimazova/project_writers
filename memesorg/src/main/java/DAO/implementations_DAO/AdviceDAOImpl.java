package DAO.implementations_DAO;

import DAO.interfaces_DAO.AdviceDAO;
import Hibernate.HibernateConnector;
import models.Advice_model;
import models.Work_model;
import org.hibernate.Session;

import java.util.List;

public class AdviceDAOImpl  implements AdviceDAO{
    Session session = null;
    public void add(Advice_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.saveOrUpdate(model);
    }

    public void save(Advice_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(model);
        session.getTransaction().commit();
        session.close();
    }

    public void update(Advice_model model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.update(model);
    }

    public void delete(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Advice_model advice_model = session.find(Advice_model.class, id);
        session.delete(advice_model);
        session.getTransaction().commit();
    }

    public Advice_model find(Long id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Advice_model result = session.find(Advice_model.class, id);
        session.getTransaction().commit();
        return result;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Session getSession() {
        return session;
    }

    public Advice_model findByName(String name) {
        return null;
    }

    public List<Advice_model> findAll() {
        return null;
    }
}
