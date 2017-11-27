package DAO;

import Hibernate.HibernateConnector;
import models.Work_model;
import org.hibernate.Session;

import java.util.List;

public class WorkDAOImpl implements WorkDAO {
    Session session = null;
    public void addWork(Work_model work_model) {
        session = HibernateConnector.getSessionFactory().openSession();
        session.saveOrUpdate(work_model);

    }

    public void save(Work_model work_model) {
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
        return null;
    }

    public Work_model findByName(String name) {
        return null;
    }

    public List<Work_model> findAll() {
        return null;
    }
}
