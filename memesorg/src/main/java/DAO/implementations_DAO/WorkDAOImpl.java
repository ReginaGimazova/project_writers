package DAO.implementations_DAO;

import DAO.interfaces_DAO.WorkDAO;
import Hibernate.HibernateConnector;
import models.Work_model;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.servlet.http.HttpSession;
import java.util.List;

public class WorkDAOImpl implements WorkDAO {
    Session session = null;
    public void add(Work_model work_model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.saveOrUpdate(work_model);

    }

    public void save(Work_model work_model){
        session = HibernateConnector.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(work_model);
        session.getTransaction().commit();
        session.close();
    }

    public void update(Work_model work_model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.update(work_model);
    }

    public void delete(Long work_id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Work_model work_model = session.find(Work_model.class, work_id);
        session.delete(work_model);
        session.getTransaction().commit();
    }

    public Work_model find(Long work_id) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.getTransaction().begin();
        Work_model result = session.find(Work_model.class, work_id);
        session.getTransaction().commit();
        return result;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Session getSession() {
        return session;
    }

    public Work_model findByName(String name) {
        session = HibernateConnector.getSessionFactory().openSession();
        Query query = session.createQuery("from Work_model where name_work=:name");
      //  query.setParameter("name_work", name);
        return (Work_model) query.uniqueResult();
    }

    public List<Work_model> findAll() {
        List<Work_model> list = session.createCriteria(Work_model.class).list();
        return list;
    }
}
