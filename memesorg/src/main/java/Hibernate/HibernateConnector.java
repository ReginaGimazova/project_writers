package Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class HibernateConnector {

   private static SessionFactory sessionFactory;
   public  static SessionFactory getSessionFactory() {
       if (sessionFactory == null) {
           Configuration conf = new Configuration().configure("hibernate.cfg.xml");
                    sessionFactory = conf.buildSessionFactory();
//                   .configure()
//                   .buildSessionFactory();
       }
       return sessionFactory;
   }
}
